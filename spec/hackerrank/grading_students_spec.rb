require 'rspec'
require_relative '../../hackerrank/grading_students'

#https://www.hackerrank.com/challenges/grading


describe 'Grading Students' do

  it 'given test cases' do
    expect(solve([73, 67, 38, 33])).to eq([75, 67, 40, 33])
    expect(solve([28, 84, 91])).to eq([28, 85, 91])
  end



end