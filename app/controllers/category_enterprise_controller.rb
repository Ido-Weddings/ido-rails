class CategoryEnterpriseController < ApplicationController
	def show_categories
		@category = Category.find(params[:id])
		render :json => @category.enterprises.to_json
	
	end

	def search_enterprise
		if params[:search]
	      @enterprise = Category.find(params[:id]).enterprises.search(params[:search])
	      render :json => @enterprise.to_json
	    else
	      @category = Category.find(params[:id])
	      render :json => @category.enterprises.to_json
	    end
	end

	def search_ranking_enterprises
		@user = User.find(params[:id_user])
		budget = @user.preferences.find(params[:id_category]).budget
		@enterprises = Category.find(params[:id_category]).enterprises.order(:rate).where("base_price <= ?", budget).reverse
		render :json => @enterprises.to_json
	end

	def evaluate_provider
	end

	private
	def enterprise_params
		params.require(:enterprise).permit(:name)
	end

	def category_params
		params.require(:category).permit(:name)
	end
end
