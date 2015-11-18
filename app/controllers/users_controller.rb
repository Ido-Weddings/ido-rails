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

	end

	def destroy

	end

	def checkusers
		user = []
		@phone_users = params[:phone_user]
		for phones in @phone_users
			@user = User.find_by_phone_number(phones) 
			if @user
				user.push(@user)
			end
		end
		render json: user.to_json
	end

	private
	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation, :phone_number, :wedding_date)
	end

end
