# [1] Two Sum

# https://leetcode.com/problems/two-sum/description/

# * algorithms
# * Easy (38.51%)
# * Source Code:       1.two-sum.rb
# * Total Accepted:    981.7K
# * Total Submissions: 2.5M
# * Testcase Example:  '[2,7,11,15]\n9'

# Given an array of integers, return indices of the two numbers such that they add up to a specific target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# Example:


# Given nums = [2, 7, 11, 15], target = 9,

# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  dict = {}
  nums.each_with_index do |n, i|
    r_index = dict[target - n]
    if r_index
      return [r_index, i]
    else
      dict[n] = i
    end
  end
end
