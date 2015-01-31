class DashboardController < ApplicationController
  before_action :authenticate_susu_user!

  def show
    @user = current_susu_user
  end

end
