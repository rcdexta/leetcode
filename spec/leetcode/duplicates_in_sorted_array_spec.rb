require 'rspec'
require_relative '../../leetcode/duplicates_in_sorted_array'

# Given a sorted array, remove the duplicates in place such that each element appear only once and return the new length.
#
# Do not allocate extra space for another array, you must do this in place with constant memory.
#
# For example,
# Given input array nums = [1,1,2],
#
# Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.
# It doesn't matter what you leave beyond the new length.

describe 'Duplicates in sorted array' do

  it 'happy path' do
    expect(remove_duplicates([1,1,2,3,4,4,5])).to eq(5)
    expect(remove_duplicates([1,2,3,4,5])).to eq(5)
    expect(remove_duplicates([1])).to eq(1)
  end


end