class CreateUserContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :user_contracts do |t|
      t.references :user
      t.references :contract
      t.timestamps
    end
  end
end
