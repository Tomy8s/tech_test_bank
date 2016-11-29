class Account
  attr_reader :customer_full_name

  def initialize(customer_full_name)
    @customer_full_name = customer_full_name
  end
end