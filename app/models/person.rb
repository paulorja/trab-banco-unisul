class Person < ActiveRecord::Base

  has_many :accounts
  has_many :partners
  has_one :legal_person
  has_one :physical_person
  
  enum tipo: [:physical, :legal]

  def get_address
    return legal_person.address if legal?
    physical_person.address if physical?
  end

  def get_account_name
    return legal_person.nome if legal?
    physical_person.nome if physical?
  end


end
