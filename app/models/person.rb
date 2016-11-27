class Person < ActiveRecord::Base

  has_many :accounts

  enum tipo: [:physical, :legal]

end
