class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
    path = case current_user.role
    when 'admin'
      admin_index_path
    when 'hr'
      hr_index_path
    else
      employee_index_path
    end

    redirect_to path      
  end

  def show
    @user = User.find(params[:id])
  end 

  def new
  end

  def edit 
  end 

  def create
  end

  def update
  end 

  def destroy
  end
end
