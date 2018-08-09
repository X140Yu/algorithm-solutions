# [2] Add Two Numbers
#
# https://leetcode.com/problems/add-two-numbers/description/
#
# * algorithms
# * Medium (28.99%)
# * Source Code:       2.add-two-numbers.rb
# * Total Accepted:    551.3K
# * Total Submissions: 1.9M
# * Testcase Example:  '[2,4,3]\n[5,6,4]'
#
# You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
#
# You may assume the two numbers do not contain any leading zero, except the number 0 itself.
#
# Example:
#
#
# Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
# Output: 7 -> 0 -> 8
# Explanation: 342 + 465 = 807.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  head = ListNode.new(0)

  carry = 0
  tmp = head
  while l1 || l2
    val = (l1 ? l1.val : 0) + (l2 ? l2.val : 0) + carry
    carry = (val > 9 ? 1 : 0)

    tmp.val = val % 10
    l1 = l1.next if l1
    l2 = l2.next if l2

    next unless l1 || l2
    tmp.next = ListNode.new(0) if tmp.next.nil?
    tmp = tmp.next
  end

  if carry == 1
    tmp.next = ListNode.new(1) if tmp
    head.next = ListNode.new(1) if tmp.nil?
  end

  head
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers1(l1, l2)
  h1 = l1
  s1 = ''
  while l1
    s1 += l1.val.to_s
    l1 = l1.next
  end

  s2 = ''
  while l2
    s2 += l2.val.to_s
    l2 = l2.next
  end

  res = (s1.reverse.to_i + s2.reverse.to_i).to_s.chars
  tmp = h1
  res.reverse.each_with_index do |re, i|
    tmp.val = re.to_i
    tmp.next = ListNode.new(0) if tmp.next.nil? && i != res.count - 1
    tmp = tmp.next
  end

  h1
end
