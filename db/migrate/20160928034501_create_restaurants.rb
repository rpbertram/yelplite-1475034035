class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :address
      t.string :zipcode
      t.string :description
      t.string :website
      t.string :photo_url
      t.string :neighborhood

      t.timestamps

    end
  end
end
