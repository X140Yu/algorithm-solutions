# [219] Contains Duplicate II

# https://leetcode.com/problems/contains-duplicate-ii/description/

# * algorithms
# * Easy (33.31%)
# * Source Code:       219.contains-duplicate-ii.rb
# * Total Accepted:    165.7K
# * Total Submissions: 490.8K
# * Testcase Example:  '[1,2,3,1]\n3'

# Given an array of integers and an integer k, find out whether there are two distinct indices i and j in the array such that nums[i] = nums[j] and the absolute difference between i and j is at most k.


# Example 1:


# Input: nums = [1,2,3,1], k = 3
# Output: true



# Example 2:


# Input: nums = [1,0,1,1], k = 1
# Output: true



# Example 3:


# Input: nums = [1,2,3,1,2,3], k = 2
# Output: false

# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
  dict = {}
  nums.each_with_index do |n, i|
    if dict.key?(n) && (dict[n] - i).abs <= k
      return true
    else
      dict[n] = i
    end
  end
  false
end
