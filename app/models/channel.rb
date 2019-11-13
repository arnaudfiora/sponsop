class Channel < ApplicationRecord
  belongs_to :user
  belongs_to :age
  has_many :channel_interests
  has_many :interests, through: :channel_interests
  accepts_nested_attributes_for :age

  GENDER = ['Male', 'Female', 'Both']

  validates :gender, inclusion: { in: GENDER }
  validates :name, :url, :gender, :age, presence: true
end
