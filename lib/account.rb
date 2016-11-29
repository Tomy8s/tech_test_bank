class Account
  attr_reader :customer_full_name, :current_balance, :transaction_history

  def initialize(customer_full_name, opening_balance = 100)
    @customer_full_name = customer_full_name
    @current_balance = opening_balance
    @transaction_history = []
  end

  def pay_in(sum, date = Date.today)
    transaction = Transaction.new(date, sum, @current_balance)
    @transaction_history << transaction
    transaction
  end

  def pay_out(sum, date = Date.today)
    transaction = Transaction.new(date, -(sum), @current_balance)
    @transaction_history << transaction
    transaction
  end

  def update_balance(transaction)
    @current_balance = transaction.new_balance
  end
end