class SessionController < ApplicationController
  def new
  end
  def create
    user = User.where(:username => params[:username]).first
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      user.set_login(true)
      redirect_to root_path
    else
      render :new
    end
  end
  def destroy
    @auth.set_login(false)
    session[:user_id] = nil
    redirect_to root_path
  end
end