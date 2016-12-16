class UserSessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password], params[:remember_me])
      redirect_to(root_path)
    else
      flash.now[:alert] = "Oh no! Login Failed."
      render action: 'new'
    end
end

  def destroy
    logout
    redirect_to root_url, notice: 'Logged out!'
  end
end
