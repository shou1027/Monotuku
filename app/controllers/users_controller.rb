class UsersController < ApplicationController
  def show
  end

  def index
    @user = User.page(params[:page]).per(10)
  end
end
