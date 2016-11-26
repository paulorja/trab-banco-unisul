class ManagerController < ApplicationController

  before_action :authorize_manager
  before_action :set_manager

  def index

  end

  private

  def set_manager
    @manager = Manager.find session[:manager_id]
  end


end
