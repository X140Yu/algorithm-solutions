# [415] Add Strings

# https://leetcode.com/problems/add-strings/description/

# * algorithms
# * Easy (41.84%)
# * Source Code:       415.add-strings.rb
# * Total Accepted:    64.1K
# * Total Submissions: 152.9K
# * Testcase Example:  '"0"\n"0"'

# Given two non-negative integers num1 and num2 represented as string, return the sum of num1 and num2.

# Note:

# The length of both num1 and num2 is < 5100.
# Both num1 and num2 contains only digits 0-9.
# Both num1 and num2 does not contain any leading zero.
# You must not use any built-in BigInteger library or convert the inputs to integer directly.

# @param {String} num1
# @param {String} num2
# @return {String}
def add_strings(num1, num2)
  a = num1.reverse
  b = num2.reverse
  count = [a.length, b.length].max
  carry = 0
  i = 0
  res = ''
  while i < count
    aa = a[i] ? a[i].to_i : 0
    bb = b[i] ? b[i].to_i : 0
    c = aa + bb + carry
    res += (c % 10).to_s
    carry = c >= 10 ? 1 : 0
    i += 1
  end
  res += '1' if carry == 1
  res.reverse
end

require 'minitest/autorun'

class TestMeSolution < Minitest::Test
  def test_solution
    assert_equal '0', add_strings('0', '0')
    assert_equal '66666', add_strings('12345', '54321')
    assert_equal '20', add_strings('1', '19')
    assert_equal '100000', add_strings('1', '99999')
    assert_equal '784456969', add_strings('82738', '784374231')
  end
end
