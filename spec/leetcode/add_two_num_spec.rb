require 'rspec'
require_relative '../../leetcode/add_two_num'


# You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
#
# You may assume the two numbers do not contain any leading zero, except the number 0 itself.
#
# Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
# Output: 7 -> 0 -> 8
#

# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next

  def initialize(val)
    @val = val
    @next = nil
  end
end

def construct_list_from(num)
  arr = num == 0 ? [0] : []
  while (num > 0)
    remainder = num % 10
    num = num / 10
    arr << remainder
  end
  prev = nil
  first = nil
  arr.reverse.each do |n|
    node = ListNode.new(n)
    prev ? prev.next = node : first = node
    prev = node
  end
  first
end


describe 'Add two Numbers' do

  it 'happy path' do
    l1 = construct_list_from 243
    l2 = construct_list_from 564
    expect(add_two_numbers_as_str(l1, l2)).to eq('708')
  end

  it 'zero path' do
    l1 = construct_list_from 0
    l2 = construct_list_from 0
    expect(add_two_numbers_as_str(l1, l2)).to eq('0')
  end

  it 'single digit path' do
    l1 = construct_list_from 5
    l2 = construct_list_from 5
    expect(add_two_numbers_as_str(l1, l2)).to eq('01')
  end


end