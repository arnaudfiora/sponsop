class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :email
      t.references :user

      t.timestamps
    end
  end
end
