require 'spec_helper'

describe Transaction do
  let(:subject) { Transaction.new(Date.new(2016,11,29)) }

  describe '#date' do
    it 'records the date of a transaction' do
      expect(subject.date.to_s).to eq "2016-11-29"
    end
  end

end