class ApplicationController < ActionController::Base

  def get_user
    session[:user_id] ||= []
  end

end
