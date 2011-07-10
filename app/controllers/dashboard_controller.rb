class DashboardController < InternalController
  def index
    @foruns = Forum.all
  end
end
