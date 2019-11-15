class ChangecolumnforBeginDateAndEndDate < ActiveRecord::Migration[5.2]
  def change
    rename_column :campaigns, :begin_date, :period
    remove_column :campaigns, :end_date
  end
end
