class User < ActiveRecord::Base
  has_many :ratings
  has_many :pictures
  has_one :preference
  has_and_belongs_to_many :enterprises
end
