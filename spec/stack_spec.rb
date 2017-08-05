require 'rspec'
require_relative '../leetcode/stack'

# push: Adds an item in the stack. If the stack is full, then it is said to be an Overflow condition.
# pop: Removes an item from the stack. The items are popped in the reversed order in which they are pushed. If the stack is empty, then it is said to be an Underflow condition.
# peek: Returns top element of stack.
# empty?: Returns true if stack is empty, else false.

describe 'Stack' do

  context '#push and #pop' do
    it 'should help push elements to the stack and pop them in the same order' do
      stack = Stack.new
      stack.push 5
      stack.push 6
      stack.push 7
      stack.push 8
      expect(stack.pop).to eq(8)
      expect(stack.pop).to eq(7)
      expect(stack.pop).to eq(6)
      expect(stack.pop).to eq(5)
    end
  end

  context '#peek' do
    it 'should return the top item in the stack with popping it' do
      stack = Stack.new
      stack.push 7
      stack.push 8
      expect(stack.peek).to eq(8)
      expect(stack.pop).to eq(8)
      expect(stack.peek).to eq(7)
    end
  end

  context '#isEmpty' do
    it 'should be affirmative if the stack is empty' do
      stack = Stack.new
      stack.push 7
      expect(stack).to_not be_empty
      stack.pop
      expect(stack).to be_empty
    end
  end

  context '#empty and pop' do
    it 'should throw exception if stack is empty and popped' do
      expect {
        Stack.new.pop
      }.to raise_error(StackEmptyException)
    end
  end

end