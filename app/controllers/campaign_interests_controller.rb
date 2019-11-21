class CampaignInterestsController < ApplicationController

  def create
    @campaign = Campaign.find(params[:campaign_id])
    @campaign_interest = CampaignInterest.new(params_interest)
    @campaign_interest.campaign = @campaign
    if @campaign_interest.save
      respond_to do |format|
        format.html { redirect_to new_campaign_path(@campaign) }
        format.js
      end
    else
      respond_to do |format|
        flash[:notice] = "Error!"
      end
    end
  end

  private

  def params_interest
    params.require(:campaign_interest).permit(:interest_id)
  end
end
