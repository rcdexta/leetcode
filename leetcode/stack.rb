class Stack

  def initialize
    @stack = []
  end

  def push(element)
    @stack << element
  end

  def pop
    raise StackEmptyException if empty?
    @stack.delete_at(length - 1)
  end

  def peek
    @stack[length - 1]
  end

  def length
    @stack.length
  end

  def empty?
    length == 0
  end

  def to_s
    @stack.to_s
  end

end

class StackEmptyException < Exception; end