# [674] Longest Continuous Increasing Subsequence

# https://leetcode.com/problems/longest-continuous-increasing-subsequence/description/

# * algorithms
# * Easy (42.71%)
# * Source Code:       674.longest-continuous-increasing-subsequence.rb
# * Total Accepted:    39.7K
# * Total Submissions: 92.9K
# * Testcase Example:  '[1,3,5,4,7]'

# Given an unsorted array of integers, find the length of longest continuous increasing subsequence (subarray).

# Example 1:

# Input: [1,3,5,4,7]
# Output: 3
# Explanation: The longest continuous increasing subsequence is [1,3,5], its length is 3.
# Even though [1,3,5,7] is also an increasing subsequence, it's not a continuous one where 5 and 7 are separated by 4.

# Example 2:

# Input: [2,2,2,2,2]
# Output: 1
# Explanation: The longest continuous increasing subsequence is [2], its length is 1.

# Note:
# Length of the array will not exceed 10,000.

# @param {Integer[]} nums
# @return {Integer}
def find_length_of_lcis(nums)
  anchor = 0
  res = 0
  nums.each_with_index do |n, i|
    anchor = i if i > 0 && n <= nums[i - 1]
    res = [res, i - anchor + 1].max
  end
  res
end

require 'minitest/autorun'

class TestMeSolution < Minitest::Test
  def test_solution
    assert_equal 3, find_length_of_lcis([1, 3, 5, 4, 7])
    assert_equal 1, find_length_of_lcis([2, 2, 2, 2, 2])
  end
end
