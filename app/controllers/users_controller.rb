class UsersController < ApplicationController
  def index
  end

  def show
  end 

  def new
  end

  def edit
    @user = User.find(params[:id]) 
  end 

  def create
  end

  def update
  end 

  def destroy
  end

  # private // this is not correct way to pass parameters because we are using devise //

  # def user_params
  #   params.require(:user).permit(:first_name, :last_name, :date_of_birth, :gender, :contact_number, :address, :designation)
  # end

end
