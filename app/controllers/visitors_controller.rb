class VisitorsController < ApplicationController

  def index

  end

  def manager
    if manager = Manager.where(login: params[:login], senha: params[:senha]).first
      session[:person_id] = nil
      session[:manager_id] = manager.id
      redirect_to manager_path
    else
      not_authorized
    end
  end

  def legal_person
    if lp = LegalPerson.find_by_cnpj(params[:cnpj])
      session[:manager_id] = nil
      session[:person_id] = lp.person.id
      redirect_to person_path
    else
      not_authorized
    end
  end

  def physical_person
    if pp = PhysicalPerson.find_by_cpf(params[:cpf])
      session[:person_id] = pp.person.id
      redirect_to person_path
    else
      not_authorized
    end
  end

  def logout
    session[:manager_id] = nil
    session[:person_id] = nil
    flash[:notice] = 'Saiu.'
    redirect_to root_path
  end

end
