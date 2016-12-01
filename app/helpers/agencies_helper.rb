module AgenciesHelper

  def agency_number (agency)
    '%04d' % agency.numero
  end

end
