# https://leetcode.com/problems/minimum-moves-to-equal-array-elements/description/

# @param {Integer[]} nums
# @return {Integer}
def min_moves(nums)
  # min_value = nums.min
  # res = 0
  # nums.each do |n|
  #     res += n - min_value
  # end
  # res
  nums.sum - nums.min * nums.count
end