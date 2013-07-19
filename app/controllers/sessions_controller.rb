class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.authenticate(params[:email], params[:password])
  	if user
  		session[:user_id] = user.id
  		redirect_to root_url, :notice => "Logged in!"
  	else
<<<<<<< HEAD
  		 redirect_to "/log_in", notice: 'Your email or password was incorrect.'
=======
  		flash.now.alert = "Invalid email or password"
  		render "new"
>>>>>>> 10029c415763f878bdb40394be3b74e9bd85ba73
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_url, :notice => "Logged Out"
  end
end
