class Transaction
  attr_reader :date, :balance_change, :new_balance

  def initialize(date, balance_change, initial_balance)
    @date = date
    @balance_change = balance_change
    @new_balance = initial_balance + balance_change
  end
end