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

	# Change to get by id
	def get_user_preference
		@user = User.find(1)
		@user_preference = @user.preferences
		render json: @user_preference.to_json
	end

	# Change to get by id
	def update_preferences
		@user = User.find(1)
		preferences = params[:preferences]
		render json: preferences[0][:budget].to_json

		id = 1
		it = 0
		preferences.each do |p|
			 @preference = Preference.find(id)
			 @preference.budget = preferences[it][:budget]
			 if it == 4
				 @preference.musician = preferences[it][:musician]
				 @preference.band = preferences[it][:band]
				 @preference.dj = preferences[it][:dj]
			 else
				 # Nothing to do
			 end

			 @preference.save
			 id = id + 1
			 it = it + 1
		end
	end

	private
		def user_params
			params.require(:user).permit(:name, :email, :password, :password_confirmation,
											:phone_number, :wedding_date, :fb_picture_url)
		end

		def preference_params
			params.permit(:musician,
																					:band,
																					:dj,
																					:budget,
																					:category_id)
		end

		# def parameters_params
		# 	params.permit(:preferences => [])
		# end
end
