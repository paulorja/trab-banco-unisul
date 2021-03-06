class Account < ActiveRecord::Base
  belongs_to :agency
  belongs_to :person

  validates :limite_cheque_esp, presence: true
  validate :incomplete_address

  enum tipo: [:corrente, :poupanca]

  def incomplete_address
    address = person.get_address

    #if [address.rua, address.cidade, address.cep, address.uf.blank?, address.numero.blank?].any?(&:blank?)
    if address.cidade.blank? or address.cep.blank? or address.rua.blank? or address.uf.blank? or address.numero.blank?
      errors.add(:incomplete_address, 'Endereço incompleto')
    end
  end

  def last_operations
    AccountOperation
        .includes(person: [:physical_person, :legal_person])
        .where(account_id: id)
        .order(created_at: :desc)
        .limit(10)
  end

end
