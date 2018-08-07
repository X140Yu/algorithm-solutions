=begin
[551] Student Attendance Record I

https://leetcode.com/problems/student-attendance-record-i/description/

* algorithms
* Easy (44.85%)
* Source Code:       551.student-attendance-record-i.rb
* Total Accepted:    37.3K
* Total Submissions: 83.2K
* Testcase Example:  '"PPALLP"'

You are given a string representing an attendance record for a student. The record only contains the following three characters:



'A' : Absent.
'L' : Late.
 'P' : Present.




A student could be rewarded if his attendance record doesn't contain more than one 'A' (absent) or more than two continuous 'L' (late).

You need to return whether the student could be rewarded according to his attendance record.

Example 1:

Input: "PPALLP"
Output: True



Example 2:

Input: "PPALLL"
Output: False
=end

# @param {String} s
# @return {Boolean}
def check_record(s)
  nums_a = 0
  continuos_l = 0
  s.each_char do |c|
    case c
      when 'A'
      nums_a += 1
      continuos_l = 0
      when 'L'
      continuos_l += 1
      return false if continuos_l > 2
    else
      continuos_l = 0
    end
  end
  nums_a <= 1    
end
