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

  has_many :preferences
  has_many :categories, through: :preferences

  has_and_belongs_to_many :enterprises, :uniq => true

  after_create :populate_user_with_preference

  after_create :populate_user_with_preference

  validates :email, uniqueness: true

  def populate_user_with_preference
  	# @user = User.create name: "Jonas",
  	# 					password: "123",
  	# 					password_confirmation: "123"

  	preference1 = Preference.create  budget: 100,
  							user_id: self.id,
  							category_id: Category.find(1).id

  	preference2 = Preference.create budget: 200,
  							user_id: self.id,
  							category_id: Category.find(2).id

  	preference3 = Preference.create budget: 400,
  							user_id: self.id,
  							category_id: Category.find(3).id

  	preference4 = Preference.create budget: 500,
  							user_id: self.id,
  							category_id: Category.find(4).id

  	preference5 = Preference.create budget: 600,
  							user_id: self.id,
  							category_id: Category.find(5).id,
                musician: true,
                band: true,
                dj: false

  	preference6 = Preference.create budget: "600",
  							user_id: self.id,
  							category_id: Category.find(6).id
  end

end
