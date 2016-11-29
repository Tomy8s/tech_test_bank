class Bank
  def self.print_statement(account)
    print_headings
  end

  def self.print_headings
    puts 'date       || credit || debit || balance'
  end
end