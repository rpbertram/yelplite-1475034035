class CreateUserprofiles < ActiveRecord::Migration
  def change
    create_table :userprofiles do |t|
      t.string :firstname
      t.string :lastinitial
      t.string :avg_rating_given
      t.integer :review_id
      t.integer :user_id

      t.timestamps

    end
  end
end
