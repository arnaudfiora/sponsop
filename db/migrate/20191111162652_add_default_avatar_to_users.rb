class AddDefaultAvatarToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column_default :users, :avatar, 'http://www.baytekent.com/wp-content/uploads/2016/12/facebook-default-no-profile-pic1.jpg'
  end
end
