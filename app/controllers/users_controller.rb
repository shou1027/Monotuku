class UsersController < ApplicationController
  def show
  end

  def index
    @user = User.page(params[:page]).per(10)
  end
  
  def signup
  end
  
  def login_form
  end
  
  def login
    @user = User.find_by(name: params[:name],password: params[:password])
    if @user
      session[:user_id] = @user.id
      redirect_to("/")
    else
      render("users/login_form")
    end
  end
  
  def logout
    session[:user_id] = nil
    redirect_to("/about")
  end
  
  def new
    @user = User.new(name: params[:name],password: params[:password])
    
    if @user.save
      session[:user_id] = @user.id
      redirect_to("/")
    else
      render("users/signup")
    end
  end
end
