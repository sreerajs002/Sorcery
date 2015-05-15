class UsersController < ApplicationController
 def new
  @user = User.new
end

def create
  @user = User.new(user_params)
  if @user.save
  	UserMailer.welcome_email(@user).deliver_now
    redirect_to root_url, :notice => "Signed up!"
  else
    render :new
  end
end
private
def user_params
      params.require(:user).permit(:email,:password)

end
end
 