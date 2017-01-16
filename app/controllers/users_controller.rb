class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      auto_login(@user)
      UserMailer.welcome(@user).deliver_later
      flash[:alert] = "Account Creation Successful!"
      redirect_to (root_path)
      # redirect_back fallback_location: root_url
    else
      render 'new'
    end
  end

  def show
    @user = current_user
    
  end

  def edit
  end

  def destroy
  end

private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :bio, :address)
  end
end
