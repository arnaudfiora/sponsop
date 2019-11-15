class ChangeDateTostringPeriod < ActiveRecord::Migration[5.2]
  def change
    change_column :campaigns, :period, :string
  end
end
