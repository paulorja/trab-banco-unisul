module AccountOperationsHelper

  def operation_options
    [
        ['Saque', AccountOperation.tipos[:saque]],
        ['Depósito', AccountOperation.tipos[:deposito]]
    ]
  end

end
