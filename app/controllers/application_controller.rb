class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # helper_method :get_name

  def get_name
    session[:name]
  end

  # def hello
  #   if get_name
  #     render :hello
  #   else
  #     redirect_to '/login'
  #   end
  # end

  def hello
    redirect_to controller: 'sessions', action: 'new' unless session[:name]
  end

end
