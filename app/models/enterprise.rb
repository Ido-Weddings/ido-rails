class Enterprise < ActiveRecord::Base
  has_many :ratings
  has_many :pictures
  has_and_belongs_to_many :users
  has_and_belongs_to_many :categories
end
