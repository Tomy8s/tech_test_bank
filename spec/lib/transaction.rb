class Transaction
  attr_reader :date, :balance_change

  def initialize(date, balance_change)
    @date = date
    @balance_change = balance_change
  end
end