class Users::DashboardsController < ApplicationController
  protect_from_forgery except: :fetch

  def home
    @cloths = current_user.cloths
    @histories = current_user.histories
  end

  def fetch
    p params
  end
end
