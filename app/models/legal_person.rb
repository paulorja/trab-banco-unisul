class LegalPerson < ActiveRecord::Base
  belongs_to :person
  belongs_to :address

  before_create :set_physical, :set_address

  validates :cnpj, length: { minimum: 9, maximum: 9 }

  def set_physical
    self.person = Person.create!(tipo: Person.tipos[:legal])
  end

  def set_address
    self.address = Address.create!
  end

end
