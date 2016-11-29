class Person < ActiveRecord::Base

  has_many :accounts
  has_one :legal_person
  has_one :physical_person
  
  
  enum tipo: [:physical, :legal]

end
