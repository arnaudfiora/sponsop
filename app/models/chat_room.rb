class ChatRoom < ApplicationRecord
  has_many :messages
  belongs_to :messenger
  belongs_to :user
end
