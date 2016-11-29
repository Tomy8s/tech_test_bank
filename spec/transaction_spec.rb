require 'spec_helper'

describe Transaction do
  let(:subject_in) { Transaction.new(Date.new(2016,11,29), 50, 100) }
  let(:subject_out) { Transaction.new(Date.new(2016,11,29), -50, 100) }

  describe '#date' do
    it 'records the date of a transaction' do
      expect(subject_in.date.to_s).to eq "2016-11-29"
    end
  end

  describe '#balance_change' do
    it 'records the positive change in balance' do
      expect(subject_in.balance_change).to eq 50
    end

    it 'records the negative change in balance' do
      expect(subject_out.balance_change).to eq -50
    end
  end

  describe '#new_balance' do
    it 'calculates the new balance, given the initial balance and a debiting balance change' do
      expect(subject_in.new_balance).to eq 150
    end

    it 'calculates the new balance, given the initial balance and a withdrawl balance change' do
      expect(subject_out.new_balance).to eq 50
    end
  end
end