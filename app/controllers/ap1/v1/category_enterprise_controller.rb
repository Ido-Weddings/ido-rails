class CategoryEnterpriseController < ApplicationController
	def show
		@enterprise = Enterprise.all
		render :json => @enterprise.to_json
	end
end
