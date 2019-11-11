class AddDefaultToIsBrand < ActiveRecord::Migration[5.2]
  def change
    change_column_default :users, :is_brand, false
  end
end
