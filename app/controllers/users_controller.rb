class UsersController < ApplicationController

  def show
  end

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to the site!  Please log in"
      redirect_to login_path
    else
      flash[:alert] = "There was a problem creating your account. Please try again."
      redirect_to signup_path
    end
  end

  def self.authenticate(email, password)
    user = User.where(email: email).first
    if user && user.password == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end


  private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
  
end
