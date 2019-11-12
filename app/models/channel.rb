class Channel < ApplicationRecord
  belongs_to :user
  has_one :age
  has_many :interests, through: :channel_interests
end
