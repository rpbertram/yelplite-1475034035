class AddUserIdToUserinfos < ActiveRecord::Migration[5.0]
  def change
    add_column :userinfos, :user_id, :integer
  end
end
