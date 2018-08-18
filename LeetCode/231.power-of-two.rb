# [231] Power of Two

# https://leetcode.com/problems/power-of-two/description/

# * algorithms
# * Easy (41.02%)
# * Source Code:       231.power-of-two.rb
# * Total Accepted:    185.3K
# * Total Submissions: 451.3K
# * Testcase Example:  '1'

# Given an integer, write a function to determine if it is a power of two.

# Example 1:


# Input: 1
# Output: true
# Explanation: 20 = 1


# Example 2:


# Input: 16
# Output: true
# Explanation: 24 = 16

# Example 3:


# Input: 218
# Output: false

# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
  n > 0 && (n & (n - 1)) == 0
  # return false if n < 0
  # n.to_s(2).count('1') == 1
end

require 'minitest/autorun'

class TestMeSolution < Minitest::Test
  def test_solution
    assert_equal true, is_power_of_two(16)
    assert_equal false, is_power_of_two(-16)
    assert_equal true, is_power_of_two(1)
  end
end