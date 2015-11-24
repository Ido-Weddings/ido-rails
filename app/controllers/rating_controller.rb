class RatingController < ApplicationController

	def create
		@enterprise = Enterprise.find(params[:enterprise_id])
		@rating = Rating.create(points: params[:points], enterprise_id: params[:enterprise_id], user_id: params[:user_id] )
		@enterprise.ratings << @rating

		if @enterprise.save
			self.calculate_rate
			render json: @enterprise.to_json
		else
			error = {:response => "false"}
			render json: error.to_json
		end
	end

	def calculate_rate
	    @enterprise = @rating.enterprise
	    rate = @enterprise.ratings.average("points")
	    @enterprise.update(rate: rate)
	end

	# private
 #    # Never trust parameters from the scary internet, only allow the white list through.
 #    def rating_params
 #    	params(:points, :enterprise_id, :user_id)
 #    end
end
