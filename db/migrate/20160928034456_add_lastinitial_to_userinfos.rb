class AddLastinitialToUserinfos < ActiveRecord::Migration[5.0]
  def change
    add_column :userinfos, :lastinitial, :string
  end
end
