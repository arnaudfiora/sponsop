class Campaign < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  belongs_to :age
  has_many :campaign_interests
  has_many :interests, through: :campaign_interests

  GENDER = ['Male', 'Female', 'Both']

  validates :gender, inclusion: { in: GENDER }
  accepts_nested_attributes_for :age
end
