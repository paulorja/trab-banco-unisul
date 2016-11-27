module AccountsHelper

  def agencies_options
    Agency.all.map { |agency| [agency.nome, agency.id] }
  end

  def tipos_options
    [
        ['Conta Corrente', Account.tipos[:corrente]],
        ['Conta Poupança', Account.tipos[:poupanca]]
    ]
  end

  def physical_people_options
    PhysicalPerson.includes(:person).all.map { |p| [p.nome, p.person.id] }
  end

  def legal_people_options
    LegalPerson.includes(:person).all.map { |p| [p.nome, p.person.id] }
  end

  def ac_number(account)
    '%05d' % account.id
  end

  def ac_type(account)
    account.tipo
  end

end
