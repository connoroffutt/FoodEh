class UserSessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password], params[:remember_me])
      redirect_back_or_to(root_url, notice: "Login Successful")
    else
      flash.now[:alert] = "Oh no! Login Failed."
      render action: 'new'
    end

  def destroy
    logout
    redirect_to root_url, notice: 'Logged out!'
  end
end
