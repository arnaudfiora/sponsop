class CreateMessengers < ActiveRecord::Migration[5.2]
  def change
    create_table :messengers do |t|
      t.references :user
      t.timestamps
    end
  end
end
