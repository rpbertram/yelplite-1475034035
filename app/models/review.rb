class Review < ApplicationRecord
  # Direct associations

  has_one    :restaurant_rating,
             :foreign_key => "restaurant_id",
             :dependent => :destroy

  belongs_to :restaurant

  belongs_to :user,
             :class_name => "Userinfo"

  # Indirect associations

  # Validations

end
