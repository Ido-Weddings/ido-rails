class UsersController < ApplicationController
	def index
		
	end

	def new
		
	end

	def create
		@user = User.new(user_params)
		@user.save
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
		params.require(:user).permit(:name, :password, :password_confirmation)
	end
end