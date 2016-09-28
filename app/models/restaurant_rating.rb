class RestaurantRating < ApplicationRecord
  # Direct associations

  belongs_to :restaurant,
             :class_name => "Review"

  # Indirect associations

  # Validations

end
