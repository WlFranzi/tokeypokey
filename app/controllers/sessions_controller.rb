class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.authenticate(params[:user][:email],params[:user][:password])
  	if user
  		session[:user_id] = user.id
  		redirect_to root_url, :alert => "Logged in! - chaka :)"
  	else
  		flash.now.alert = "Invalid e-mail or password"
  		render "new"
  	end
  end

def destroy
  session[:user_id] = nil
  redirect_to root_url, :notice => "logged out! :("
end

private

  def user_params
  	params.require(:user).permit(:name, :email, :password)
  end
end



