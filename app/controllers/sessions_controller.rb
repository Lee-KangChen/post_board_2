class SessionsController > ActiveRecord::Base
  def new
  end

  def create
    user = User.find_by(name: params[:name])

    if user && user.authenicate(params[:password])
      sessions[:user_id] = user.id
      flash[:notice] = "You've logged in!"
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

    def destory
      sessions[:user_id] = nil
      redirect_to root_path
    end
    
end
