class UsersController < ApplicationController
	def index
		
	end

	def new
		
	end

	def create
		@user = User.new(user_params)
		#@user.save

		# REVIEW: to improve using callback before_create to e
		#          verify email.
		@search = User.where('email = ?', params[:email]).empty?

		# Email dont exist already
		if @search
	
			if @user.save
				render json: @user.to_json
			end

		# Email already exist
		else
			error = {:response => "false"}
			render json: error.to_json
		end
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
