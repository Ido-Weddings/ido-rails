class Category < ActiveRecord::Base
  #has_and_belongs_to_many :enterprises
  has_many :preferences
  has_many :users, through: :preferences
  # has_many :enterprise_category_pictures
  # has_many :enterprises, through: :enterprise_category_picture
  has_many :pictures
  has_many :enterprises, through: :pictures
end
