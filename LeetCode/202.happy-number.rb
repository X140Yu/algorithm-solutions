# [202] Happy Number

# https://leetcode.com/problems/happy-number/description/

# * algorithms
# * Easy (42.43%)
# * Source Code:       202.happy-number.rb
# * Total Accepted:    177.5K
# * Total Submissions: 417.7K
# * Testcase Example:  '19'

# Write an algorithm to determine if a number is "happy".

# A happy number is a number defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. Those numbers for which this process ends in 1 are happy numbers.

# Example:


# Input: 19
# Output: true
# Explanation:
# 12 + 92 = 82
# 82 + 22 = 68
# 62 + 82 = 100
# 12 + 02 + 02 = 1

# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  slow = n
  fast = cal_result(n)
  while slow != fast
    slow = cal_result(slow)
    fast = cal_result(cal_result(fast))
  end
  return slow == 1
end

def cal_result(n)
  res = 0
  while n > 0
    a = n % 10
    res += a * a
    n /= 10
  end
  res
end

require 'minitest/autorun'

class TestMeSolution < Minitest::Test
  def test_solution
    assert_equal 82, cal_result(19)
    assert_equal 68, cal_result(82)
    assert_equal 100, cal_result(68)
    assert_equal 1, cal_result(100)
    assert_equal true, is_happy(19)
  end
end