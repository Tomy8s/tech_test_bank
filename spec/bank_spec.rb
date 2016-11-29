require 'spec_helper'

describe Bank do
  describe '::print_statement' do
    it 'takes one argument' do
      expect(subject.class).to respond_to('print_statement').with(1).argument
    end
  end
end