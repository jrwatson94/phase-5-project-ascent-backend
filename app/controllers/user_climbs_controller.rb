class UserClimbsController < ApplicationController
    skip_before_action :authorized
    def index 
        user_climbs = UserClimb.all
        render json: user_climbs
    end
    
    def new 
        user_climb = UserClimb.new
        render json: user_climb
    end

    def create 
        user_climb = UserClimb.create(user_climb_params)
        render json: user_climb
    end
    def destroy
        user_climb = UserClimb.find(params[:id])
        user_climb.destroy
    end

    private

    def user_climb_params
        params.require(:user_climb).permit(:user_id, :climb_id, :completed, :favorite)
    end

end
