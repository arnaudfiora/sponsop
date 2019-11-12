class AddColumnsToAge < ActiveRecord::Migration[5.2]
  def change
    add_column :ages, :less_12, :boolean, default: false
    add_column :ages, :age_12_18, :boolean, default: false
    add_column :ages, :age_19_25, :boolean, default: false
    add_column :ages, :age_26_35, :boolean, default: false
    add_column :ages, :age_36_45, :boolean, default: false
    add_column :ages, :age_46_55, :boolean, default: false
    add_column :ages, :age_56_65, :boolean, default: false
    add_column :ages, :more_65, :boolean, default: false
  end
end
