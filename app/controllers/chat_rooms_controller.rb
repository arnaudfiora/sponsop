class ChatRoomsController < ApplicationController
  def show
    @chat_room = ChatRoom.includes(messages: :user).find(params[:id])
  end

  def new
    @channel = Channel.find(params[:format])
    user_1 = current_user.first_name
    user_2 = @channel.user.first_name
    if existing_chatroom = ChatRoom.find_by(name: "conversation #{user_1} and #{user_2}")
      redirect_to chat_room_path(existing_chatroom)
    else
      @chatroom = ChatRoom.new(name: "conversation #{user_1} and #{user_2}", user1: user_1, user2: user_2)
        if @chatroom.save
        redirect_to chat_room_path(@chatroom)
        end
    end
  end

end


