class CampaignsController < ApplicationController
  def new
    @campaign = Campaign.new
    @campaign.build_age
  end

  def show
    set_campaign
  end

  def create
    @campaign = Campaign.new(campaign_params)
    @campaign.user = current_user
    if @campaign.save
      redirect_to dashboard_path # To change to campaign-page when page done
    else
      render :new
    end
  end

  def edit
    set_campaign
  end

  def update
    set_campaign
    @campaign.update(campaign_params)
    @campaign.save
    redirect_to dashboard_path
  end

  def set_campaign
    @campaign = Campaign.find(params[:id])
  end

  private

  def campaign_params
    params.require(:campaign).permit(:name, :begin_date, :end_date, :gender, :description, interest_ids: [], age_attributes: {})
  end
end
