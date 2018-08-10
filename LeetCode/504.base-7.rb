# [504] Base 7

# https://leetcode.com/problems/base-7/description/

# * algorithms
# * Easy (43.89%)
# * Source Code:       504.base-7.rb
# * Total Accepted:    31.2K
# * Total Submissions: 71K
# * Testcase Example:  '100'

# Given an integer, return its base 7 string representation.

# Example 1:

# Input: 100
# Output: "202"

# Example 2:

# Input: -7
# Output: "-10"

# Note:
# The input will be in range of [-1e7, 1e7].

# @param {Integer} num
# @return {String}
def convert_to_base7(num)
  return '-' + convert_to_base7(-num) if num < 0
  return num.to_s if num < 7
  convert_to_base7(num / 7) + (num % 7).to_s
end

def convert_to_base77(num)
  res = ''
  n = num.abs
  while n > 0
    p n % 7
    res = (n % 7).to_s + res
    n /= 7
  end
  num > 0 ? res : '-' + res
end
