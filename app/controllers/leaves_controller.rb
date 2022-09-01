class LeavesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @leave = @user.leaves.all
  end

  def new
    @leave = Leave.new
  end

  def create
		@leave = current_user.leaves.new(leave_params)
		if @leave.save
		 redirect_to root_path 
		else
		 render :new
		end
  end

  def show
    @user = User.find(params[:user_id])
    @leave = @user.leaves.find(params[:id])
  end

  def approval
  	@user = User.find(params[:user_id])
    @leave = @user.leaves.find(params[:id])
    @leave.update(status: "Approval") 
    redirect_to user_leaves_path(@user)
  end

  def rejected
  	@user = User.find(params[:user_id])
    @leave = @user.leaves.find(params[:id])
    @leave.update(status: "Rejected")
    redirect_to user_leaves_path(@user)
  end

  def edit
    @user = User.find(params[:user_id])
    @leave = @user.leaves.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @leave = @user.leaves.find(params[:id])
    if @leave.update(leave_params)
      redirect_to  user_leaves_path(@user)
    else
      redirect_to  edit_user_leave_path(@user)
    end
  end
  
 private

  def leave_params
    params.require(:leave).permit(:status, :start_date, :end_date, :reason, :leave_type)
  end
end

