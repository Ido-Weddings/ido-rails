class User < ActiveRecord::Base
  has_secure_password
  #before_save :verify_email
  has_many :ratings
  has_many :pictures

  #REVIEW: to consert the auto-association to be
  # 		bilateral.
  has_many :friends, class_name: "User"
  					#foreign_key: "friend_"
  belongs_to :user
  has_one :preference
  has_and_belongs_to_many :enterprises

  validates :email, uniqueness: true

  # def verify_email
  #    #User.where('email = ?', params[:email]).empty?
  #    if User.exists?(email: self.email)
  #     false
  #    end
  #     true
  # end
end
