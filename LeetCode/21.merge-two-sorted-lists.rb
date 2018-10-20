# [21] Merge Two Sorted Lists  
# 
# https://leetcode.com/problems/merge-two-sorted-lists/description/
# 
# * algorithms
# * Easy (42.48%)
# * Source Code:       21.merge-two-sorted-lists.rb
# * Total Accepted:    425.1K
# * Total Submissions: 976.5K
# * Testcase Example:  '[1,2,4]\n[1,3,4]'
# 
# Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.
# 
# Example:
# 
# Input: 1->2->4, 1->3->4
# Output: 1->1->2->3->4->4
# 
# 


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
def merge_two_lists(l1, l2)
  head = nil
  current = nil
  while l1 && l2
    node = nil
    if l1.val > l2.val
      node = l2
      l2 = l2.next
    else
      node = l1
      l1 = l1.next
    end
    
    current.next = node if current
    current = node
    
    head = node unless head
  end
  
  node = l1 ? l1 : l2

  if head == nil
    head = node
  else
    current.next = node
  end
  
  head  
end

def merge_two_lists2(l1, l2)
  return l1 unless l2
  return l2 unless l1
  
  if l1.val < l2.val
    l1.next = merge_two_lists(l1.next, l2)
    l1
  else
    l2.next = merge_two_lists(l1, l2.next)
    l2
  end
end
