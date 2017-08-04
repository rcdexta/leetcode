def two_sum(nums, target)
  h = {}
  nums.each_with_index { |n,i| h[n] = i }
  nums.each_with_index do |num1, num1_index|
    num2 = target - num1
    if h[num2] and h[num2] != num1_index
      num2_index = h[num2]
      return [num1_index, num2_index]
    end
  end
  []
end

def two_sum_one_pass(nums, target)
  h = {}
  nums.each_with_index do |num1, i|
    num2 = target - num1
    if h.has_key?(num2) and h[num2] != i
      return [h[num2], i]
    end
    h[num1] = i
  end
  []
end