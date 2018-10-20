# [14] Longest Common Prefix

# https://leetcode.com/problems/longest-common-prefix/description/

# * algorithms
# * Easy (31.80%)
# * Source Code:       14.longest-common-prefix.rb
# * Total Accepted:    338.8K
# * Total Submissions: 1.1M
# * Testcase Example:  '["flower","flow","flight"]'

# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

# Example 1:


# Input: ["flower","flow","flight"]
# Output: "fl"


# Example 2:


# Input: ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.


# Note:

# All given inputs are in lowercase letters a-z.

# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return "" if strs == nil || strs.count == 0
  s = strs[0]
  s.chars.each_with_index do |c, i|
    strs[1...strs.count].each do |str|
      # puts "#{c}, #{i}, #{str}"
      if i > str.length || str[i] != c
        return s[0...i]
      end
    end
  end
  s
end
