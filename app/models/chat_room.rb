class ChatRoom < ApplicationRecord
  has_many :messages
  belongs_to :user
end
