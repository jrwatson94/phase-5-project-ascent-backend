class ClimbsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]
    def index
        @climbs = Climb.all.sort{ |a, b|  b.rating <=> a.rating }

        render json: @climbs
    end
end
