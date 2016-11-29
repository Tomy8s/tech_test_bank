require 'spec_helper'

describe Bank do
  describe '::print_statement' do
    it 'takes one argument' do
      expect(subject.class).to respond_to('print_statement').with(1).argument
    end
  end

  describe '#print_headings' do
    it 'prints the correct headings' do
      expect(subject.print_headings).to eq 'date       || credit || debit || balance'
    end
  end
end