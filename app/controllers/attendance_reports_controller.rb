class AttendanceReportsController < ApplicationController
  before_action :set_user
  def index
    @attendance_reports = @user.attendancereports.all
  end

  def show
    @attendance_report = AttendanceReport.find(params[:id])
  end

  def new
    @attendance_report = @user.attendance_reports.new()
  end

  def edit 
  end 

  def create
    @user.attendance_reports.create(attendance_report_params)

    redirect_to root_path
  end

  def update
  end 

  def destroy
  end

  def total_tracked_time
    final_time = end_time - start_time
    @attendance = AttendanceReport.find(attendance_report_id)
    @attendance.update_attributes(total_time: final_time)
  end

  private

  def attendance_report_params
    params.require(:attendance_report).permit(:attendance, :user_id, :status, :date, :total_time)
  end

  def set_user
    @user = User.find_by(id: params[:user_id])
  end
end
