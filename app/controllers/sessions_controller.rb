class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:name])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "You've logged in!"
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

    def destory
      session[:user_id] = nil
      redirect_to root_path
    end

end
