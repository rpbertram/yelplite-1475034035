class AddPasswordToUserinfos < ActiveRecord::Migration[5.0]
  def change
    add_column :userinfos, :password, :string
  end
end
