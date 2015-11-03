class Enterprise < ActiveRecord::Base
  has_many :ratings
  has_many :pictures
  has_many :categories, through: :pictures
  has_and_belongs_to_many :users
  #has_and_belongs_to_many :categories
  # has_many :enterprise_category_pictures
  # has_many :categories, through: :enterprise_category_pictures
end
