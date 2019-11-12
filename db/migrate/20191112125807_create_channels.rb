class CreateChannels < ActiveRecord::Migration[5.2]
  def change
    create_table :channels do |t|
      t.string :name
      t.string :url
      t.string :gender
      t.references :user
      t.references :age

      t.timestamps
    end
  end
end
