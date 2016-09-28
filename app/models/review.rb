class Review < ApplicationRecord
  # Direct associations

  belongs_to :restaurant

  belongs_to :user,
             :class_name => "Userinfo"

  # Indirect associations

  # Validations

end
