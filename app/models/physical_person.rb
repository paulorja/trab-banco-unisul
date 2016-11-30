class PhysicalPerson < ActiveRecord::Base
  belongs_to :person
  belongs_to :address

  before_create :set_physical, :set_address

  validates :cpf, length: { minimum: 9, maximum: 9 }
  validates :cpf, uniqueness: true

  def set_physical
    self.person = Person.create!(tipo: Person.tipos[:physical])
  end

  def set_address
    self.address = Address.create!
  end

end
