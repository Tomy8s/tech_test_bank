require 'spec_helper'

describe Account do
  let(:subject) { Account.new('John Smith') }
  describe '#name' do
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

  describe '#transactions' do
    it 'intializes with an empty array of transactions' do
      expect(subject.transaction_history).to be_a Array
      expect(subject.transaction_history).to be_empty
    end
  end
end