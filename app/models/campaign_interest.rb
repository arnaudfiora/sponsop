class CampaignInterest < ApplicationRecord
  belongs_to :campaign
  belongs_to :interest

  validates :campaign, uniqueness: { scope: :interest }
  validates :interest, uniqueness: { scope: :campaign }
end
