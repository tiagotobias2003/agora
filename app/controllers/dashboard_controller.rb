class DashboardController < ApplicationController
  def index
    @foruns = Forum.all
  end
end
