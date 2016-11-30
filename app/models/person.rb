class Person < ActiveRecord::Base

  has_many :accounts
  has_one :legal_person
  has_one :physical_person
  
  enum tipo: [:physical, :legal]

  def get_address
    return legal_person.address if legal?
    physical_person.address if physical?
  end


end
