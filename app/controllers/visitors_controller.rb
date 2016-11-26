class VisitorsController < ApplicationController

  def index

  end

  def manager
    if manager = Manager.where(login: params[:login], senha: params[:senha]).first
      session[:manager_id] = manager.id
      flash[:notice] = 'Autorizado'
    else
      not_authorized
    end
  end

  def legal_person
    if lp = LegalPerson.find_by_cnpj(params[:cnpj])
      session[:pj_id] = lp.id
      flash[:notice] = 'Autorizado'
    else
      not_authorized
    end
  end

  def physical_person
    if pp = PhysicalPerson.find_by_cpf(params[:cpf])
      session[:pp_id] = pp.id
      flash[:notice] = 'Autorizado'
    else
      not_authorized
    end
  end

end
