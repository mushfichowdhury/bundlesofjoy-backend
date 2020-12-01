class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create, :createchild]

    def create
        @user = User.find_by(username: user_login_params[:username])
        if @user && @user.authenticate(user_login_params[:password])
            token = encode_token({user_id: @user.id})
            render json: {user: UserSerializer.new(@user), jwt: token}, status: :accepted
        else
            render json: {message: 'Invalid username or password'}, status: :unauthorized
        end
    end

    def createchild
        @user = Child.find_by(name: child_user_login_params[:name])
        if @user && @user.authenticate(child_user_login_params[:password])
            token = encode_token({user_id: @user.id})
            render json: {user: ChildSerializer.new(@user), jwt: token}, status: :accepted
        else
            render json: {message: 'Invalid name or password'}, status: :unauthorized
        end
    end

private
    def user_login_params
        params.require(:user).permit(:username, :password)
    end

    def child_user_login_params
        params.require(:user).permit(:user_id, :name, :birthday, :age, :password)
    end
    
end