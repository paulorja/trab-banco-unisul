class Person < ActiveRecord::Base

  enum tipo: [:fisica, :juridica]

end
