class CreateCampaignInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :campaign_interests do |t|

      t.references :campaign
      t.references :interest
      t.timestamps
    end
  end
end
