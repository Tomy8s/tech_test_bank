class Bank
  def self.print_statement(account)
    print_headings
  end

  def self.print_headings
    puts 'date       || credit || debit || balance'
  end

  def self.print_transactions(account)
    transactions = account.transaction_history.reverse
    transactions.each do |transact|
      puts "#{transact.date.strftime('%d/%m/%Y')} || #{transact.balance_change > 0 ? '%.2f' % transact.balance_change : '       '} || #{transact.balance_change < 0 ? '%.2f' % transact.balance_change.abs : '       '} || #{'%.2f' % transact.new_balance}"
    end
  end
end