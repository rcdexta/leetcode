# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  max_so_far = nums.first
  max_ending_here = nums.first
  nums.slice(1..-1).each do |num|
    max_ending_here = [max_ending_here+num, num].max
    max_so_far = [max_so_far, max_ending_here].max
  end
  max_so_far
end