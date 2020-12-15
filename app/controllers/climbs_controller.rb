class ClimbsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]
    def index
        @climbs = Climb.all
        render json: @climbs
    end
end
