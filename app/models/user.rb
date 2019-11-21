class User < ApplicationRecord
  has_many :campaigns
  has_many :channels
  has_many :messages
  has_many :chat_rooms

  has_many :user_contracts
  has_many :contracts, through: :user_contracts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true
end
