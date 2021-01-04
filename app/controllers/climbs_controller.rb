class ClimbsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show, :reviews]
    def index
        @climbs = Climb.all.sort{ |a, b|  b.rating <=> a.rating }
        render json: @climbs
    end

    def reviews
        @reviews = []
        if Climb.find(params[:id]).reviews
            @reviews = Climb.find(params[:id]).reviews
        end
        render json: @reviews
    end
end
