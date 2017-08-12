require 'rspec'
require_relative '../../leetcode/longest_common_prefix'

describe 'Longest common prefix' do

  it 'should return the longest common prefix given a array of strings' do
    strs = %w(leets leetscode leeter)
    expect(longest_common_prefix(strs)).to eq('leet')
  end

  it 'should work for even a single letter prefix' do
    strs = %w(cat cow camel caramel)
    expect(longest_common_prefix(strs)).to eq('c')
  end

  it 'should return empty string if no common prefix' do
    strs = %w(abcd pqrs xyz)
    expect(longest_common_prefix(strs)).to eq('')
  end

  it 'should work if same work repeats in array' do
    strs = %w(leet leet leet)
    expect(longest_common_prefix(strs)).to eq('leet')
  end

end