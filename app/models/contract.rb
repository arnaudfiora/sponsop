class Contract < ApplicationRecord
  has_many :user_contracts
  has_many :users, through: :user_contracts
  STATUS =  %w[Pending Confirmed Declined]
  validates :validated, inclusion: { in: STATUS }
end
