class Review < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :class_name => "Userinfo"

  # Indirect associations

  # Validations

end
