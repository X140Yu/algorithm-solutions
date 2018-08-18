# [405] Convert a Number to Hexadecimal

# https://leetcode.com/problems/convert-a-number-to-hexadecimal/description/

# * algorithms
# * Easy (41.15%)
# * Source Code:       405.convert-a-number-to-hexadecimal.rb
# * Total Accepted:    37.5K
# * Total Submissions: 91.1K
# * Testcase Example:  '26'


# Given an integer, write an algorithm to convert it to hexadecimal. For negative integer, two’s complement method is used.


# Note:

# All letters in hexadecimal (a-f) must be in lowercase.
# The hexadecimal string must not contain extra leading 0s. If the number is zero, it is represented by a single zero character '0'; otherwise, the first character in the hexadecimal string will not be the zero character.
# The given number is guaranteed to fit within the range of a 32-bit signed integer.
# You must not use any method provided by the library which converts/formats the number to hex directly.



# Example 1:

# Input:
# 26

# Output:
# "1a"



# Example 2:

# Input:
# -1

# Output:
# "ffffffff"

# @param {Integer} num
# @return {String}
def to_hex(num)
  return '0' if num.zero?
  count = 0
  res = ''
  a = %w[0 1 2 3 4 5 6 7 8 9 a b c d e f]
  while num != 0 && count < 8
    res += a[num & 0xf]
    num /= 16
    count += 1
  end
  res.reverse
end

require 'minitest/autorun'

class TestMeSolution < Minitest::Test
  def test_solution
    assert_equal '1a', to_hex(26)
    assert_equal 'ffffffff', to_hex(-1)
  end
end
