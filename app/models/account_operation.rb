class AccountOperation < ActiveRecord::Base

  before_create :set_account_saldo

  belongs_to :account
  belongs_to :person

  enum tipo: [:deposito, :saque]

  def set_account_saldo
    account.update_attribute(:saldo, account.saldo+amount) if deposito?
    account.update_attribute(:saldo, account.saldo-amount) if saque?
  end

end
