class SessionsController < ApplicationController
  # def new
  #   get_name = params[:name]
  #
  #   if get_name
  #     redirect_to root_path
  #   else
  #     render :new
  #   end
  # end
  #
  # def create
  #   get_name = params[:name]
  #   redirect_to root_path
  # end

  def new
  end

  def create
    # return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?

    if !params[:name] || params[:name].empty?
      return redirect_to(controller: 'sessions', action: 'new')
    end

    session[:name] = params[:name]
    redirect_to controller: 'application', action: 'hello'
  end

  def destroy
    session.delete :name
    redirect_to controller: 'application', action: 'hello'
  end

end
