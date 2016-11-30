class AccountOperation < ActiveRecord::Base
  belongs_to :account
  belongs_to :person

  enum tipo: [:deposito, :saque]

end
