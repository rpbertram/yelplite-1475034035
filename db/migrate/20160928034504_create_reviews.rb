class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :content
      t.string :userphoto
      t.integer :user_id
      t.integer :stars
      t.integer :restaurant_id

      t.timestamps

    end
  end
end
