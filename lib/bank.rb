require_relative 'bank_account'

class Bank
  def open_account
    BankAccount.new
  end
end
