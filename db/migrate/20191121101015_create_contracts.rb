class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :email
      t.string :campaign
      t.string :photo
      t.date :date
      t.string :validated, default: "Pending"
      t.references :user


      t.timestamps
    end
  end
end
