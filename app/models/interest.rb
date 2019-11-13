class Interest < ApplicationRecord
  has_many :campaign_interests
  has_many :channels_interests
end
