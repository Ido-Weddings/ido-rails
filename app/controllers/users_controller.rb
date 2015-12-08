#require 'json'
class UsersController < ApplicationController

	def index

	end

	def new

	end

	def create
		@user = User.new(user_params)

		if @user.save
			#render :json => @category.enterprises.to_json(:include => {:categories => {:only => :id}})

			#success = {:response => "true"}
			render json: @user.to_json
		else
			error = {:response => "false"}
			render json: error.to_json
		end

		# REVIEW: to improve using callback before_create to e
		#          verify email.
		# @search = User.where('email = ?', params[:email]).empty?
		#
		# # Email dont exist already
		# if @search
		#
		# 	if @user.save
		# 		render json: @user.to_json
		# 	end
		#
		# # Email already exist
		# else
		# 	error = {:response => "false"}
		# 	render json: error.to_json
		# end
		# js = {email: params[:email]}
		# render json: js.to_json
	end

	def show
	end

	def edit

	end

	def login

		@user = User.find_by_email(user_params[:email]).try(:authenticate, user_params[:password])

		if !@user
			error = {:response => "false"}
			render json: error.to_json
		else
			render json: @user.to_json
		end

	end

	def update
		@user = User.find(params[:user][:id])
		if @user.update(user_params)
			render json: @user.to_json
		else
			error = {:response => "false"}
			render json: error.to_json
		end
	end

	def destroy
	end

	def follow_provider
		@user = User.find(params[:id_user])
		@provider = Enterprise.find(params[:id_provider])

		@user.enterprises << @provider
		@user.save
		self.show_providers_by_user
	end

	# Change to get by id
	def get_user_preference
		@user = User.find(params[:id])
		@user_preference = @user.preferences
		render json: @user_preference.to_json
	end

	# Change to get by id
	def update_preferences
		@user = User.find(params[:id_user])
		preferences = params[:preferences]
		render json: preferences[0][:budget].to_json
		@user_preferences = @user.preferences

		preferences.each do |new_preference|
			@user_preferences.each do |preference_user|
				if new_preference[:category_id] == preference_user.category_id
					preference_user.budget = new_preference[:budget]
					preference_user.musician = new_preference[:musician]
					preference_user.band = new_preference[:band]
					preference_user.dj = new_preference[:dj]
					preference_user.save
				end
			end
		end
	end

	# Destroy relation between user and artist
	def unfollow_provider
		@user = User.find(params[:id_user])
		@provider = Enterprise.find(params[:id_provider])

		@user.enterprises.delete @provider
		self.show_providers_by_user
	end

	def show_providers_by_user
		@user = User.find(params[:id_user])
		render json: @user.enterprises.to_json
	end

	def checkusers
		@current_user = User.find(params[:id_user])
		user = []
		@phone_users = params[:phone_user]
		for phones in @phone_users
			@user = User.find_by_phone_number(phones)
			if @user
				@current_user.friends << @user
				user.push(@user)
			end
		end
		render json: @current_user.friends.to_json
	end

	def show_providers_advised_by_user
		@enterprises = Enterprise.joins(:advises).where(advises: {user_id: params[:id_user]})
		render json: @enterprises.to_json
	end

	def advise_provider
		@advise = Advise.new(user_id: params[:id_user], enterprise_id: params[:enterprise_id])


		if @advise.save
			render json: @user.to_json
		else
			error = {:response => "false"}
			render json: error.to_json
		end
	end

	def save_profile_picture
		@user = User.find(user_params[:id])
		if @user
			file_data = params[:fb_picture_url].tempfile
			avatar = Cloudinary::Uploader.upload(File.open(file_data, 'r'))
			@user.update(fb_picture_url: avatar["url"])
			render json: @user.fb_picture_url.to_json
		else
			error = {:response => "false"}
			render json: error.to_json
		end
	end

	private
		def user_params
			params.require(:user).permit(:id, :name, :email, :password, :password_confirmation,
											:phone_number, :wedding_date, :fb_picture_url)
		end

		def preference_params
			params.permit(:musician, :band, :dj, :budget, :category_id)
		end

end
