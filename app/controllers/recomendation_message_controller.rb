class RecomendationMessageController < ApplicationController

	def show
		@enterprise = Enterprise.find(params[:id_enterprise])
		render :json => @enterprise.messages.to_json(:include => {:user => {:only => [:fb_picture_url, :name]}})
		# test = []
		# @enterprises = @category.enterprises
		# @enterprises.find_each do |a|
		# 	testdois = []
		# 	testdois.push(a)
		# 	a.pictures.find_each do |p|
		# 		testdois.push(p.url)
		# 	end
		# 	test.push(testdois)
		# end
		# render :json => test.to_json
		#render :json => @category.enterprises.to_json(:include => {:categories => {:only => :id}})
	end

	def create
		if Message.create(message: params[:message], user_id: params[:user_id], enterprise_id: params[:enterprise_id])
			success = {:response => "true"}
			render json: success.to_json 
		else
			error = {:response => "false"}
			render json: error.to_json
		end
	end
end
