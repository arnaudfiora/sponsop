class ContractsController < ApplicationController
  def index
    @contracts = Contract.where(id: UserContract.where(user_id: current_user.id).map(&:contract_id))
    redirect_to dashboard_path(@contracts)
  end

  def show
    @contract = Contract.find(params[:id])
  end

  def new
    @chat_room = ChatRoom.find(params[:format])
    @campaigns = Campaign.where(user: current_user)
  end

  def create
    @campaign_id = params[:campaign]
    @campaign = Campaign.find(@campaign_id)
    @contract = Contract.new
    @contract[:photo] = @campaign['photo']
    @contract[:campaign] = @campaign.name
    @contract[:name] = params[:name]
    @contract[:date] = Date.today.to_s
    @contract[:description] = params[:description]
    chat_room_id = params[:chat_room_id].to_i
    @chat_room = ChatRoom.find(chat_room_id)
    influencer_email = @chat_room.email
    user_1 = current_user
    user_2 = User.find_by(email: influencer_email)
    @contract_users = [user_1]
    @contract_users << user_2
    @contract.users = @contract_users
    if @contract.save!
      redirect_to dashboard_path(@contract)
    end
  end

  # private
  # def contract_params
  #   params.require(:contract).permit(:name, :address, :description)
  # end

  def edit
    @contract = Contract.find(params[:id])
  end

  def update
    @contract = Contract.find(params[:id])
    @contract.update(contract_params)

    if @contract.save
      redirect_to contracts_path
    else
      render :edit
    end
  end
  private
 def contract_params
  params.require(:contract).permit(:validated)
 end

end
