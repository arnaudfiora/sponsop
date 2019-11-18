class TwousersPerConversation < ActiveRecord::Migration[5.2]
  def change
    add_column :chat_rooms, :user1, :string
    add_column :chat_rooms, :user2, :string
  end
end
