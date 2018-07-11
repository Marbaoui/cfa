class UsersController < ApplicationController
  def home
  end


  def new
    @user = User.new
  end

  def create
    time_now = Time.now.strftime("%Y-%d-%m %H:%M:%S %Z")
    @user = User.create(name: params[:name], password: params[:password])
    @Staff=  Staff.create(id:  @user.id, first_name: params[:first_name], last_name: params[:last_name], address: params[:address], postal_code: params[:postal_code], city: params[:city], gsm: params[:gsm], tel: params[:tel], email: params[:email], role: params[:role], birthday: params[:birthday], created_at: time_now, updated_at: time_now )
    redirect_to users_login_path

  end

  def logout
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
