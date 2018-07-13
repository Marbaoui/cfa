class UsersController < ApplicationController
    before_action :time_now_set,
    :only => [:create, :update]

  def home

  end


  def new
    @user = User.new
  end

  def create
    @user = User.create(name: params[:name], password: params[:password])
    @staff=  Staff.create(id:  @user.id, first_name: params[:first_name], last_name: params[:last_name], address: params[:address], postal_code: params[:postal_code], city: params[:city], gsm: params[:gsm], tel: params[:tel], email: params[:email], role: params[:role], birthday: params[:birthday], created_at: time_now_set, updated_at: time_now_set  )
    if @user.save and @staff.save

      @role =  Role.find_by role: '#{@staff.role}'
      @role.number_R = @role.number_R + 1
      redirect_to users_login_path

    end

  def update
    time_now_set

  end

  def logout
    session[:user_id] = nil
    redirect_to users_login_path
  end


  def login
    @role = Role.all
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

  private

  def time_now_set
    Time.now.strftime("%Y-%d-%m %H:%M:%S %Z")
  end


end
