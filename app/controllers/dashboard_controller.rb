class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @kindergarten_students_count = Dashboard.first
  end
end
