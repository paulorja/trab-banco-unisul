class LegalPerson < ActiveRecord::Base
  belongs_to :person
  belongs_to :address

  before_create :set_physical, :set_address

  validates :nome, length: { minimum: 3, maximum: 200 }
  validates :cnpj, length: { minimum: 13, maximum: 13 }
  validates :cnpj, uniqueness: true

  def set_physical
    self.person = Person.create!(tipo: Person.tipos[:legal])
  end

  def set_address
    self.address = Address.create!
  end

end
