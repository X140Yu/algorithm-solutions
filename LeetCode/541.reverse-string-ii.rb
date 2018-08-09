=begin
[541] Reverse String II

https://leetcode.com/problems/reverse-string-ii/description/

* algorithms
* Easy (44.12%)
* Source Code:       541.reverse-string-ii.rb
* Total Accepted:    44.1K
* Total Submissions: 99.9K
* Testcase Example:  '"abcdefg"\n2'


Given a string and an integer k, you need to reverse the first k characters for every 2k characters counting from the start of the string. If there are less than k characters left, reverse all of them. If there are less than 2k but greater than or equal to k characters, then reverse the first k characters and left the other as original.


Example:

Input: s = "abcdefg", k = 2
Output: "bacdfeg"



Restrictions:

 The string consists of lower English letters only.
 Length of the given string and k will in the range [1, 10000]
=end

# @param {String} s
# @param {Integer} k
# @return {String}
def reverse_str(s, k)
  (0...s.length).step(2*k) do |i|
    s[i...i+k] = s[i...i+k].reverse
  end
  s
end
