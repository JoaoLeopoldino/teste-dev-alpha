class ActivitiesController < ApiController
  def index
  	@activities = Activities.new.activities
  	render json: @activities, status: :ok

  rescue StandardError => e 
  	render json: {errors: e.message }, status: :unprocessable_entity
  end

end
