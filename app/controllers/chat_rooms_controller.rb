class ChatRoomsController < ApplicationController
  def show
    @chat_room = ChatRoom.includes(messages: :user).find(params[:id])
  end

  def new
    @channel = Channel.find(params[:format])
    user_1 = current_user
    user_2 = @channel.user


    if existing_chatroom = ChatRoom.find_by( email:user_2.email)
      redirect_to chat_room_path(existing_chatroom)
    else
      @chatroom = ChatRoom.new(name: " #{user_2.first_name}", user1: user_1, user2: user_2, email: user_2.email)
      @chatroom.user = user_1
        if @chatroom.save
        redirect_to chat_room_path(@chatroom)
        end
    end
  end

end


