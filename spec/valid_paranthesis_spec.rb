require 'rspec'
require_relative '../leetcode/valid_paranthesis'

#Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

#The brackets must close in the correct order, "()" and "()[]{}" are all valid but "(]" and "([)]" are not.

describe 'Valid Paranthesis' do

  it 'should validate of one type' do
    expect(is_valid('{}')).to be_truthy
    expect(is_valid('[]')).to be_truthy
    expect(is_valid('()')).to be_truthy
    expect(is_valid('(]')).to be_falsey
  end

  it 'should validate of complex types' do
    expect(is_valid('{()}')).to be_truthy
    expect(is_valid('[{}]')).to be_truthy
    expect(is_valid('([])')).to be_truthy
    expect(is_valid('()[]{}')).to be_truthy
    expect(is_valid('([]')).to be_falsey
    expect(is_valid('([]))')).to be_falsey
    expect(is_valid('([)]')).to be_falsey
  end

  it 'should validate of invalid symbols' do
    expect(is_valid('{(|)}')).to be_falsey
  end

end