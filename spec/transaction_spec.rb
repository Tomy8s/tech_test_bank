require 'spec_helper'

describe Transaction do
  # let(:subject) { Transaction.new(Date.new(2016,11,29)) }

  describe '#date' do
    it 'records the date of a transaction' do
      subject = Transaction.new(Date.new(2016,11,29))
      expect(subject.date.to_s).to eq "2016-11-29"
    end
  end

  describe '#balance_change' do
    it 'records the positive change in balance' do
      subject = Transaction.new(Date.new(2016,11,29), 50)
      expect(subject.balance_change).to eq 50
    end

    it 'records the negative change in balance' do
      subject = Transaction.new(Date.new(2016,11,29), -50)
      expect(subject.balance_change).to eq -50
    end
  end
end