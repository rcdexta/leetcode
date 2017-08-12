require 'rspec'
require_relative '../../leetcode/minimum_subarray'

# Find the contiguous subarray within an array (containing at least one number) which has the largest sum.
#
# For example, given the array [-2,1,-3,4,-1,2,1,-5,4], the contiguous subarray [4,-1,2,1] has the largest sum = 6.

describe 'Minimum subarray' do

  it 'given test cases' do
    expect(max_sub_array([-2, 1, -3, 4, -1, 2, 1, -5, 4])).to eq(6)
    expect(max_sub_array([-6, -4, -3, -2])).to eq(-2)
    expect(max_sub_array([-1])).to eq(-1)
  end

end