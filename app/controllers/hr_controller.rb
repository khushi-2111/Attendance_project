class HrController < ApplicationController
  def index
    @users = User.all
  end
end
