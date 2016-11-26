class Person < ActiveRecord::Base

  enum tipo: [:physical, :legal]

end
