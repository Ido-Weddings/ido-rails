class Category < ActiveRecord::Base
  #has_and_belongs_to_many :enterprises
  has_many :preferences
  has_many :users, through: :preferences
  # has_many :enterprise_category_pictures
  # has_many :enterprises, through: :enterprise_category_picture
  has_many :pictures
  has_many :enterprises, through: :pictures

  def self.populate_categories
  	@category1 = self.create(name: "Cerimonial")
  	@category2 = self.create(name: "Photography")
  	@category3 = self.create(name: "Dress")
  	@category4 = self.create(name: "Decoration")
  	@category5 = self.create(name: "Musician")
  	@category6 = self.create(name: "Buffet")
  end
end
