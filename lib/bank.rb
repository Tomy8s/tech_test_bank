class Bank
  def self.print_statement(account)
    print_headings
  end

  def self.print_headings
    puts 'date       || credit || debit || balance'
  end

  def self.print_transactions(account)
    account.transaction_history.each do |transact|
      puts transact.date.to_s
    end
  end
end