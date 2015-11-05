class CategoryEnterpriseController < ApplicationController
	def show
		@category = Category.find(params[:id])
		render :json => @category.enterprises.to_json(:include => {:categories => {:only => :id}})
	end

	private
	def enterprise_params
		params.require(:enterprise).permit(:name)
	end

	def category_params
		params.require(:category).permit(:name)
	end
end
