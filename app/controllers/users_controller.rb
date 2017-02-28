class UsersController < ApplicationController

  def show_user
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: @user.errors.full_messages
    end
  end

  def show_posts
    @users = User.find_by(id: params[:posts])
    render json: @users
  end

  private

  def user_params
    params.permit(:username, :email, :bio)
  end

end
