=begin
[844] Backspace String Compare

https://leetcode.com/problems/backspace-string-compare/description/

* algorithms
* Easy (45.12%)
* Source Code:       844.backspace-string-compare.rb
* Total Accepted:    11.3K
* Total Submissions: 25.1K
* Testcase Example:  '"ab#c"\n"ad#c"'

Given two strings S and T, return if they are equal when both are typed into empty text editors. # means a backspace character.


Example 1:


Input: S = "ab#c", T = "ad#c"
Output: true
Explanation: Both S and T become "ac".



Example 2:


Input: S = "ab##", T = "c#d#"
Output: true
Explanation: Both S and T become "".



Example 3:


Input: S = "a##c", T = "#a#c"
Output: true
Explanation: Both S and T become "c".



Example 4:


Input: S = "a#c", T = "b"
Output: false
Explanation: S becomes "c" while T becomes "b".


Note:


	1 <= S.length <= 200
	1 <= T.length <= 200
	S and T only contain lowercase letters and '#' characters.


Follow up:


	Can you solve it in O(N) time and O(1) space?
=end

# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s, t)

  def helper(s)
    stack = []
    s.each_char do |c|
      if c == '#'
        stack.pop
      else
        stack.push c
      end
    end
    stack
  end

  helper(s) == helper(t)
end
