require 'spec_helper'

describe Bank do
  pay_in = Transaction.new(Date.new(2016,11,29), 50, 100)
  pay_out = Transaction.new(Date.new(2016,11,29), -50, 100)
  account = Account.new('John Smith')
  account.pay_in(25)
  account.pay_out(50)
  let(:account) { account }
  let(:statement) { Bank.print_statement(account) }


  describe '::print_statement' do
    it 'takes one argument' do
      expect(subject.class).to respond_to('print_statement').with(1).argument
    end

    # it 'returns headings' do
    #   expect{ statement }.to output("date       || credit || debit || balance\n").to_stdout
    # end
  end

  describe '::print_headings' do
    it 'prints the correct headings' do
      expect{ subject.class.print_headings }.to output("date       || credit || debit || balance\n").to_stdout
    end
  end

  describe '::print_transactions' do
    it 'takes one argument' do
      expect(subject.class).to respond_to('print_transactions').with(1).argument
    end

    # Superseded by following test
    # it 'prints transaction dates' do
    #   expect{ subject.class.print_transactions(account) }.to output("2016-11-29\n2016-11-29\n").to_stdout
    # end

    it 'prints dates dd/mm/yyy, balance' do
      expect{ subject.class.print_transactions(account) }.to output("30/11/2016 ||        || 50.00 || 75.00\n30/11/2016 || 25.00 ||       || 125.00\n").to_stdout
    end
  end
end