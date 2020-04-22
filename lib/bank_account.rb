class BankAccount 
  attr_reader :balance

  def created?
    true
  end

  def initialize
    @balance = 0
  end

  def make_deposit(amount)
    @balance += amount
  end
end
