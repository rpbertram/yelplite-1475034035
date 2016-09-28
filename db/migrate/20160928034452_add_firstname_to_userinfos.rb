class AddFirstnameToUserinfos < ActiveRecord::Migration[5.0]
  def change
    add_column :userinfos, :firstname, :string
  end
end
