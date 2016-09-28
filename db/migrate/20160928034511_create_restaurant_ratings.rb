class CreateRestaurantRatings < ActiveRecord::Migration
  def change
    create_table :restaurant_ratings do |t|
      t.integer :restaurant_id
      t.integer :avg_stars

      t.timestamps

    end
  end
end
