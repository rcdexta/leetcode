# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  i = 1
  while i < nums.length
    previous = nums[i-1]
    current = nums[i]
    if current == previous
      nums.delete_at(i)
    else
      i += 1
    end
  end
  nums.length
end