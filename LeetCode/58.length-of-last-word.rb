# [58] Length of Last Word  
# 
# https://leetcode.com/problems/length-of-last-word/description/
# 
# * algorithms
# * Easy (32.08%)
# * Source Code:       58.length-of-last-word.rb
# * Total Accepted:    218.9K
# * Total Submissions: 683K
# * Testcase Example:  '"Hello World"'
# 
# Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word in the string.
# 
# If the last word does not exist, return 0.
# 
# Note: A word is defined as a character sequence consists of non-space characters only.
# 
# Example:
# 
# Input: "Hello World"
# Output: 5
# 
# 


# @param {String} s
# @return {Integer}
def length_of_last_word(s)
  words = s.split(' ')
  return 0 if words.count == 0
  
  words.last.length
end
