class Partner < ActiveRecord::Base
  belongs_to :person
  belongs_to :account

  validate :same_account_person
  validate :person_exists
  validate :account_exists

  def same_account_person
    if Partner.where(person_id: person_id).where(account_id: account_id).size > 0
      errors.add(:same_account_person, 'Já existe')
    end
  end

  def person_exists
    if Person.find_by_id(person_id).nil?
      errors.add(:person_not_exists, 'Cliente não encontrado')
    end
  end

  def account_exists
    if Account.find_by_id(account_id).nil?
      errors.add(:account_not_exists, 'Conta não encontrada')
    end
  end

  def account_number
    if account
      account.id
    end
  end

end
