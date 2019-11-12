class CreateChannelInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :channel_interests do |t|

      t.references :channel
      t.references :interest
      t.timestamps
    end
  end
end
