class MessengersController < ApplicationController
  def index
    @chat_rooms = ChatRoom.all.where(user: current_user)
  end

  def show
    set_messenger
  end



  def set_messenger
  @chat_room = ChatRoom.find(params[:id])
  end
end
