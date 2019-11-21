class MessengersController < ApplicationController
  def index
    @chat_room = ChatRoom.find(1)
    @chat_rooms_influencer = ChatRoom.all.where( email: current_user.email)
    @chat_rooms_brand = ChatRoom.all.where(user: current_user).order(created_at: :desc)
  end


  def show
    set_messenger
  end


  def set_messenger
  @chat_room = ChatRoom.find(params[:format])
  end
end
