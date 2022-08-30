class WorkdaysController < ApplicationController
  before_action :set_user
  def index
  # @user = User.find(params[:id])
    @workdays = @user.workdays.all
  end

  def show
    @workday = Workday.find(params[:id])
  end

  def new
    @workday = @user.workdays.new
  end

  def edit
  end

  def create
    @workday = @user.workdays.create(workday_params)

    redirect_to root_path
  end

  def update
  end

  def destroy
  end

  private

  def workday_params
    params.require(:workday).permit(:user_id, :time, :day, :date, :intime, :outtime, :attendance, :status)
  end

  def set_user
    @user = User.find_by(id: params[:user_id])
  end
end
  