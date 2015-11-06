class User < ActiveRecord::Base
  has_secure_password
  has_many :ratings
  has_many :pictures

  #REVIEW: to consert the auto-association to be
  # 		bilateral.
  has_many :friends, class_name: "User"
  					#foreign_key: "friend_"
  belongs_to :user
  has_one :preference
  has_and_belongs_to_many :enterprises
end
