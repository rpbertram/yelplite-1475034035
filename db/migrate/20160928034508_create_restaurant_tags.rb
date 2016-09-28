class CreateRestaurantTags < ActiveRecord::Migration
  def change
    create_table :restaurant_tags do |t|
      t.integer :restaurant_id
      t.string :tag

      t.timestamps

    end
  end
end
