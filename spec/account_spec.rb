require 'spec_helper'

describe Account do
  let(:subject) { Account.new('John Smith') }
  let(:deposit) { Transaction.new(Date.new(2016,11,29), 50, 100) }
  let(:withdrawl) { Transaction.new(Date.new(2016,11,29), -50, 100) }

  describe '#customer_full_name' do
    it 'is initialized when given a name' do
      expect(subject.customer_full_name).to eq 'John Smith' 
    end

    it 'throws an error id no name given for initialization' do
      expect{ Account.new }.to raise_error ArgumentError
    end
  end

  describe '#current_balance' do
    it 'has a default balance of 100' do
      expect(subject.current_balance).to eq 100
    end

    it 'can be opened with a manually set opening balance' do
      open_with_50 = Account.new('John Smith', 50)
      expect(open_with_50.current_balance).to eq 50
    end
  end

  describe '#transaction_history' do
    it 'intializes with an empty array of transactions' do
      expect(subject.transaction_history).to be_an Array
      expect(subject.transaction_history).to be_empty
    end
  end

  describe '#pay_in' do
    it 'accepts an integer as an argument' do
      expect(subject).to respond_to('pay_in').with(1).argument
    end

    it 'can accept a date as a second argument' do
      expect(subject).to respond_to('pay_in').with(2).argument
    end

    it 'returns a transaction object when called' do
      expect(subject.pay_in(50)).to be_a Transaction
    end

    it 'returns a transaction object with the correct amount added' do
      expect(subject.pay_in(50).balance_change).to eq 50
    end

    it 'adds Transactions to #transaction_history' do
      transaction = subject.pay_in(50)
      expect(subject.transaction_history).to include transaction
    end
  end

  describe '#pay_out' do
    it 'accepts an integer as an argument' do
      expect(subject).to respond_to('pay_out').with(1).argument
    end

    it 'can accept a date as a second argument' do
      expect(subject).to respond_to('pay_out').with(2).argument
    end

    it 'returns a transaction object when called' do
      expect(subject.pay_out(50)).to be_a Transaction
    end

    it 'returns a transaction object with the correct amount added' do
      expect(subject.pay_out(50).balance_change).to eq -50
    end

    it 'adds Transactions to #transaction_history' do
      transaction = subject.pay_out(50)
      expect(subject.transaction_history).to include transaction
    end
  end

  describe '#update_balance' do
    it 'takes an argument' do
      expect(subject).to respond_to('update_balance').with(1).argument
    end

    it 'updates when money is paid in' do
      subject.update_balance(deposit)
      expect(subject.current_balance).to eq 150 
    end

    it 'updates when money is paid out' do
      subject.update_balance(withdrawl)
      expect(subject.current_balance).to eq 50 
    end
  end
end