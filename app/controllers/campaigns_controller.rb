class CampaignsController < ApplicationController
  before_action :set_campaign, only: %I[edit update destroy]

  def show
    @campaign = Campaign.find(params[:id])
    @results = filter_results(@campaign)
  end

  def new
    @campaign = Campaign.new
    @campaign.build_age
  end

  def create
    @campaign = Campaign.new(campaign_params)
    @campaign.user = current_user
    if @campaign.save
      respond_to do |format|
        flash[:notice] = "You successfully created the campaign '#{@campaign.name}'"
        format.html { redirect_to new_campaign_path(@campaign) }
        format.js
      end
    else
      render :new
    end
  end

  def edit
    @campaign_interest = CampaignInterest.new
    @interests = Interest.all
  end

  def update
    @campaign.update(campaign_params)
    @campaign.save
    redirect_to campaign_path(@campaign)
  end

  def destroy
    @campaign.destroy
    redirect_to dashboard_path
  end

  private

  def set_campaign
    @campaign = Campaign.find(params[:id])
  end

  def campaign_params
    params.require(:campaign).permit(:name, :period, :gender, :description, age_attributes: {})
  end

  def filter_results(campaign)
    first_results = first_filter(campaign)
    second_results = second_filter(campaign, first_results)
    third_results = third_filter(campaign, second_results)

    return third_results
  end

  def first_filter(campaign)
    if campaign.gender == "Both"
      first_results = Channel.all
    else
      first_results = Channel.where(gender: campaign.gender)
    end

    return first_results
  end

  def second_filter(campaign, first_results)
    second_results = []
    campaign_ages = campaign.age.attributes.values.slice(3..10)

    first_results.each do |channel|
      channel.age.attributes.values.slice(3..10).each_with_index do |age, index|
        if age == true
          unless second_results.include? channel
            if age == campaign_ages[index]
              second_results << channel
            end
          end
        end
      end
    end

    return second_results
  end

  def third_filter(campaign, second_results)
    third_results = []

    second_results.each do |channel|
      unless (campaign.interests & channel.interests)[0].nil?
        third_results << channel
      end
    end

    return third_results
  end
end
