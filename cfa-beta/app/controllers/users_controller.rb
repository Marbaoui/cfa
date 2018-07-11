class UsersController < ApplicationController
  def home
  end


  def new
    @user = User.new
  end

  def create

    User.create(name: params[:name], password: params[:password])
    redirect_to new_staff_path
    
    end

    def destroy
      session[:user_id] = nil
      redirect_to users_login_path
    end


  def login
  end

  def check
    @current_user = User.where(name: params[:name], password: params[:password]).first
    if @current_user
      session[:user_id] = @current_user.id
      flash[:info] = "Vous êtes maintenant connecté"
      redirect_to "/users/home"
    else
      session[:user_id] = nil
      flash[:info] = "Échec de la connexion"
      redirect_to "/users/login"
    end
  end
end
