class ChannelsController < ApplicationController
  before_action :set_channel, only: %I[show edit update delete]

  # def index
  # end

  # def show
  # end

  def new
    @channel = Channel.new
    @channel.build_age
  end

  def create
    @channel = Channel.new(channel_params)
    @channel.user = current_user
    if @channel.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  # def edit
  # end

  # def update
  # end

  # def delete
  # end

  private

  def set_channel
    @channel = Channel.find(params[:id])
  end

  def channel_params
    params.require(:channel).permit(:name, :url, :gender, age_attributes: {}, interest_ids: [])
  end
end
