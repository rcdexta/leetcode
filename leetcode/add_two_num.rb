# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  construct_list_from_str add_two_numbers_as_str(l1, l2)
end

def add_two_numbers_as_str(l1, l2)
  num1 = traverse_list_to_find_number(l1)
  num2 = traverse_list_to_find_number(l2)
  sum = num1 + num2
  reverse_num_as_str(sum)
end

def reverse_num_as_str(num)
  num.to_s.reverse
end

def construct_list_from_str(str)
  prev = nil
  first = nil
  str.each_char do |n|
    node = ListNode.new(n.to_i)
    prev ? prev.next = node : first = node
    prev = node
  end
  first
end

def traverse_list_to_find_number(node)
  str = ''
  loop do
    str += node.val.to_s
    break unless node.next
    node = node.next
  end
  str.reverse.to_i
end