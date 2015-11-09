class UsersController < ApplicationController
	def index

	end

	def new

	end

	def create
		@user = User.new(user_params)
		
		if @user.save
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

	def update

	end

	def destroy

	end

	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation,
										:phone_number, :wedding_date)
	end
end
