include AccountsHelper

class PersonController < ApplicationController

  before_action :authorize_person
  before_action :set_person

  def index

  end

  private

  def set_person
    @person = Person.find(session[:person_id])
  end

end
