class AddPhotoToCampaigns < ActiveRecord::Migration[5.2]
  def change
    add_column :campaigns, :photo, :string
  end
end
