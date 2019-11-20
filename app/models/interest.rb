class Interest < ApplicationRecord
  has_many :campaign_interests
  has_many :campaigns, through: :campaign_interests
  has_many :channel_interests
end
