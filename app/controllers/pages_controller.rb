class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home; end

  def dashboard
    @contracts = Contract.where(id: UserContract.where(user_id: current_user.id).map(&:contract_id))
    @user = current_user
    @campaigns = Campaign.all.where(user: current_user)
  end
end
