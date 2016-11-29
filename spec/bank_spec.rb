require 'spec_helper'

describe Bank do
  let(:account) { Account.new('John Smith') }
  let(:statement) { Bank.print_statement(account) }

  describe '::print_statement' do
    it 'takes one argument' do
      expect(subject.class).to respond_to('print_statement').with(1).argument
    end

    it 'returns headings' do
      expect(statement).to output("date       || credit || debit || balance\n").to_stdout
    end
  end

  describe '#print_headings' do
    it 'prints the correct headings' do
      expect{ subject.print_headings }.to output("date       || credit || debit || balance\n").to_stdout
    end
  end
end