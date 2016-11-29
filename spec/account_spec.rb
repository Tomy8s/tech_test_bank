require 'spec_helper'

describe Account do
  let(:subject) { Account.new('John Smith') }
  describe '#name' do
    it 'is initialized when given a name' do
      expect(subject.customer_full_name).to eq 'John Smith' 
    end

    it 'throws an error id no name given for initialization' do
      expect{ Account.new }.to raise_error
    end
  end
end