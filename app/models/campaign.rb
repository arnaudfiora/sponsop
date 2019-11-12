class Campaign < ApplicationRecord
  belongs_to :user
  belongs_to :age
  has_many :interests, through: :campaign_interests

  GENDER = ['Male', 'Female', 'Both']

  validates :gender, inclusion: { in: GENDER }
end
