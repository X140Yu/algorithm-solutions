# [66] Plus One  
# 
# https://leetcode.com/problems/plus-one/description/
# 
# * algorithms
# * Easy (39.93%)
# * Source Code:       66.plus-one.rb
# * Total Accepted:    300.9K
# * Total Submissions: 752.3K
# * Testcase Example:  '[1,2,3]'
# 
# Given a non-empty array of digits representing a non-negative integer, plus one to the integer.
# 
# The digits are stored such that the most significant digit is at the head of the list, and each element in the array contain a single digit.
# 
# You may assume the integer does not contain any leading zero, except the number 0 itself.
# 
# Example 1:
# 
# 
# Input: [1,2,3]
# Output: [1,2,4]
# Explanation: The array represents the integer 123.
# 
# 
# Example 2:
# 
# 
# Input: [4,3,2,1]
# Output: [4,3,2,2]
# Explanation: The array represents the integer 4321.
# 
# 


# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  carry = 1
  digits.reverse.each_with_index do |d, i|
    idx = digits.count - i - 1
    carry, digits[idx] = cal_carry(d, carry)
  end

  digits.unshift(1) if carry == 1

  digits
end

def cal_carry(num, carry)
  new_num = num + carry
  if new_num > 9
    return 1, new_num % 10
  else
    return 0, new_num
  end
end
