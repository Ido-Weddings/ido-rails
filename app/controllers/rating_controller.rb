class RatingController < ApplicationController

	def create
		@enterprise = Enterprise.find(params[:enterprise_id])

		@rating = Rating.where("user_id = ? AND enterprise_id = ?", params[:user_id], params[:enterprise_id]) 
		if @rating.empty? 
			@rating = Rating.create(points: params[:points], enterprise_id: params[:enterprise_id], user_id: params[:user_id])

			@enterprise.ratings << @rating
			if @enterprise.save
				self.calculate_rate
				render json: @enterprise.to_json
			else
				error = {:response => "false"}
				render json: error.to_json
			end
		else
			@rating.each do |rating|
				@rating = rating
			end
			if @rating.update(points: params[:points])
				self.calculate_rate
				render json: @enterprise.to_json
			else
				error = {:response => "false"}
				render json: error.to_json
			end
		end
	end

	def calculate_rate
	    @enterprise = @rating.enterprise
	    rate = @enterprise.ratings.average("points")
	    number_ratings = @enterprise.ratings.count
	    @enterprise.update(rate: rate, number_ratings: number_ratings)
	end

	# private
 #    # Never trust parameters from the scary internet, only allow the white list through.
 #    def rating_params
 #    	params(:points, :enterprise_id, :user_id)
 #    end
end
