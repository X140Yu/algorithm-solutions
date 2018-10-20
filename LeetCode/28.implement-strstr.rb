# [28] Implement strStr()  
# 
# https://leetcode.com/problems/implement-strstr/description/
# 
# * algorithms
# * Easy (29.61%)
# * Source Code:       28.implement-strstr.rb
# * Total Accepted:    327.5K
# * Total Submissions: 1.1M
# * Testcase Example:  '"hello"\n"ll"'
# 
# Implement strStr().
# 
# Return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.
# 
# Example 1:
# 
# 
# Input: haystack = "hello", needle = "ll"
# Output: 2
# 
# 
# Example 2:
# 
# 
# Input: haystack = "aaaaa", needle = "bba"
# Output: -1
# 
# 
# Clarification:
# 
# What should we return when needle is an empty string? This is a great question to ask during an interview.
# 
# For the purpose of this problem, we will return 0 when needle is an empty string. This is consistent to C's strstr() and Java's indexOf().
# 


# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  return 0 if haystack == needle

  haystack.chars.each_with_index do |c, i|
    return i if haystack[i...(i + needle.length)] == needle
  end

  -1    
end
