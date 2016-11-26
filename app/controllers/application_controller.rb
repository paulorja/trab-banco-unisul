class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authorize_manager
    not_authorized if session[:manager_id].nil?
  end

  def not_authorized
    flash[:notice] = 'Não autorizado'
    redirect_to root_path
  end

end
