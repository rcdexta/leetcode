require 'rspec'
require_relative '../leetcode/../leetcode/reverse_number'

describe 'Reverse Number' do

  it 'should reverse a positive large number' do
    expect(reverse_number(123456)).to eq(654321)
  end

  it 'should reverse a negative large number' do
    expect(reverse_number(-123456)).to eq(-654321)
  end

end