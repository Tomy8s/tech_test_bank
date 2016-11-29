class Account
  attr_reader :customer_full_name, :current_balance, :transaction_history

  def initialize(customer_full_name, opening_balance = 100)
    @customer_full_name = customer_full_name
    @current_balance = opening_balance
    @transaction_history = []
  end

  def pay_in(sum)
  end
end