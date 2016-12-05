class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      auto_login(@user)
      redirect_to projects_url
    else
      render 'new'
    end
  end

  def show
    @user = Use.find(params[:id])
  end

  def edit
  end

  def destroy
  end

private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password_digest, :bio, :address)
  end
end
