require 'rspec'
require_relative '../../leetcode/longest_substring'

# Given a string, find the length of the longest substring without repeating characters.
#
# Examples:
#
# Given "abcabcbb", the answer is "abc", which the length is 3.
#
# Given "bbbbb", the answer is "b", with the length of 1.
#
# Given "pwwkew", the answer is "wke", with the length of 3.
# Note that the answer must be a substring, "pwke" is a subsequence and not a substring.

describe 'Longest substring' do

  it 'given test cases' do
    expect(length_of_longest_substring('abcabcbb')).to eq(3)
    expect(length_of_longest_substring('bbbbbbbbb')).to eq(1)
    expect(length_of_longest_substring('pwwkew')).to eq(3)
  end

  it 'twisted cases' do
    expect(length_of_longest_substring('pqrstqabc')).to eq(7)
    expect(length_of_longest_substring('pqrstqabcalkjaqwety')).to eq(9)
  end

  it 'edge cases' do
    expect(length_of_longest_substring('a')).to eq(1)
    expect(length_of_longest_substring('')).to eq(0)
  end


end