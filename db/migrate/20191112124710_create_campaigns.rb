class CreateCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.string :gender
      t.date :begin_date
      t.date :end_date
      t.references :user
      t.references :age

      t.timestamps
    end
  end
end
