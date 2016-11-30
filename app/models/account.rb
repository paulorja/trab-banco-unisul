class Account < ActiveRecord::Base
  belongs_to :agency
  belongs_to :person

  validate :incomplete_address

  enum tipo: [:corrente, :poupanca]

  def incomplete_address
    address = person.get_address

    if [address.rua, address.cidade, address.cep, address.uf.blank?, address.numero.blank?].any?(&:blank?)
      errors.add(:incomplete_address, 'Endereço incompleto')
    end

  end

end
