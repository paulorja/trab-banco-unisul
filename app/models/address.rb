class Address < ActiveRecord::Base

  validates :uf, length: { minimum: 2, maximum: 2 }

end
