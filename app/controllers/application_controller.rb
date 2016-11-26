class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def not_authorized
    flash[:notice] = 'Não autorizado'
    redirect_to :back
  end

end
