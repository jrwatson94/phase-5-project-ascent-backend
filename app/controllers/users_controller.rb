class UsersController < ApplicationController
    wrap_parameters :user, include: [:username, :password, :name, :interests, :bio]
    skip_before_action :authorized
    def index 
        @users = User.all
        render json: @users
    end

    def show 
      user = User.find(params[:id])
      render json: user
    end

    def create 
        @user = User.create(user_params)
        if @user.valid?
          @token = encode_token(user_id: @user.id)
          render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
          render json: { error: @user.errors.full_messages }, status: :not_acceptable
        end
    end

    def update 
      user = User.find(params[:id])
      user.update(user_params)
      render json: user
    end
    
    def destroy
      user = User.find(params[:id])
      user.destroy
  end

    private

    def user_params
        params.require(:user).permit(:name, :username, :password, :state, :interests, :bio, :password_confirmation)
    end
end
