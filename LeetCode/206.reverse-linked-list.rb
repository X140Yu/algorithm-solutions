# https://leetcode.com/problems/reverse-linked-list/description/

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  return head if head.nil? or head.next.nil?
  node = reverse_list(head.next)
  node.next.next = node
  node.next = nil
  node
end

# @param {ListNode} head
# @return {ListNode}
def reverse_list_iterate(head)    
    last = nil
    while head
      n = head.next
      head.next = last
      last = head
      head = n
    end
    last
end
