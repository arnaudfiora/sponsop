class Age < ApplicationRecord
  has_one :campaign
  has_one :channel
end
