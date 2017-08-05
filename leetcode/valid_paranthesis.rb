require_relative './stack'

# @param {String} s
# @return {Boolean}
BRACKETS_MAP = {'}' => '{', ']' => '[', ')' => '('}

def is_valid(s)
  stack = Stack.new
  s.each_char do |bracket|
    if BRACKETS_MAP.keys.include?(bracket) and stack.peek == BRACKETS_MAP[bracket]
      stack.pop
    else
      stack.push bracket
    end
  end
  stack.empty?
end