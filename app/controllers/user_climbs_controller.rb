class UserClimbsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]
    def new 
        user_climb = UserClimb.new
        render json: user_climb
    end

    def create 
        user_climb = UserClimb.create(user_climb_params)
        render json: user_climb
    end

    def user_climb_params
        params.require(:user_climb).permit(:user_id, :climb_id, :completed, :favorite)
    end
end
