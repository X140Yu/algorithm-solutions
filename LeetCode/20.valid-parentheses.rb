# [20] Valid Parentheses

# https://leetcode.com/problems/valid-parentheses/description/

# * algorithms
# * Easy (34.28%)
# * Source Code:       20.valid-parentheses.rb
# * Total Accepted:    361.2K
# * Total Submissions: 1.1M
# * Testcase Example:  '"()"'

# Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:

#   Open brackets must be closed by the same type of brackets.
#   Open brackets must be closed in the correct order.

# Note that an empty string is also considered valid.

# Example 1:

# Input: "()"
# Output: true

# Example 2:

# Input: "()[]{}"
# Output: true

# Example 3:

# Input: "(]"
# Output: false

# Example 4:

# Input: "([)]"
# Output: false

# Example 5:

# Input: "{[]}"
# Output: true

# @param {String} s
# @return {Boolean}
def is_valid(s)
  # '(', ')', '{', '}', '[' and ']'
  stack = []
  dict = {
    '(' => ')',
    '{' => '}',
    '[' => ']'
  }

  s.each_char do |c|
    if dict.key?(c)
      stack.push c
    else
      top = stack.pop
      return false if dict[top] != c
    end
  end

  stack.empty?
end
