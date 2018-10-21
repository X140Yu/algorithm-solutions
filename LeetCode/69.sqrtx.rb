# [69] Sqrt(x)  
# 
# https://leetcode.com/problems/sqrtx/description/
# 
# * algorithms
# * Easy (29.32%)
# * Source Code:       69.sqrtx.rb
# * Total Accepted:    281.2K
# * Total Submissions: 949.8K
# * Testcase Example:  '4'
# 
# Implement int sqrt(int x).
# 
# Compute and return the square root of x, where x is guaranteed to be a non-negative integer.
# 
# Since the return type is an integer, the decimal digits are truncated and only the integer part of the result is returned.
# 
# Example 1:
# 
# 
# Input: 4
# Output: 2
# 
# 
# Example 2:
# 
# 
# Input: 8
# Output: 2
# Explanation: The square root of 8 is 2.82842..., and since 
#              the decimal part is truncated, 2 is returned.
# 
# 


# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
  return 1 if x == 1

  trigger(x, 0, x / 2)
end

def trigger(x, left, right)
  mid = (left + right) / 2
  if mid * mid <= x && (mid + 1) * (mid + 1) > x
    return mid
  elsif mid * mid > x
    trigger(x, left, mid - 1)
  else
    trigger(x, mid + 1, right)
  end
end
