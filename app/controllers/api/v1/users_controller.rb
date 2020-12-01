class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_by(user_id: params[:user_id])
        render json: user
    end

    # def create
    #     @user = User.create(user_params)
    #     if @user.valid?
    #         render json: { user: UserSerializer.new(@user) }, status: :created
    #     else
    #         render json: { error: 'failed to create user' }, status: :not_acceptable
    #     end
    # end

    private
    def user_params
        params.require(:user).permit(:username, :password)
    end


end