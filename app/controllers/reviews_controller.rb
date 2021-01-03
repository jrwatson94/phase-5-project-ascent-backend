class ReviewsController < ApplicationController
    skip_before_action :authorized


    def create
        review = Review.create(review_params)
        render json: review
    end

    def show 
        review = Review.find(params[:id])
        render json: review
    end

    def update
        review = Review.find(params[:id])
        review.update(review_params)
        render json: review
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
    end

    private 
    def review_params 
        params.require(:review).permit(:user_climb_id, :title, :content, :stars)
    end
end
