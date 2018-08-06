=begin
[147] Insertion Sort List

https://leetcode.com/problems/insertion-sort-list/description/

* algorithms
* Medium (34.60%)
* Source Code:       147.insertion-sort-list.rb
* Total Accepted:    125.9K
* Total Submissions: 363.6K
* Testcase Example:  '[4,2,1,3]'

Sort a linked list using insertion sort.





A graphical example of insertion sort. The partial sorted list (black) initially contains only the first element in the list.
With each iteration one element (red) is removed from the input data and inserted in-place into the sorted list





Algorithm of Insertion Sort:


	Insertion sort iterates, consuming one input element each repetition, and growing a sorted output list.
	At each iteration, insertion sort removes one element from the input data, finds the location it belongs within the sorted list, and inserts it there.
	It repeats until no input elements remain.



Example 1:


Input: 4->2->1->3
Output: 1->2->3->4


Example 2:


Input: -1->5->3->4->0
Output: -1->0->3->4->5
=end

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
def insertion_sort_list(head)
  dummy = ListNode.new(0)
  cur = head
  while cur
    pre = dummy
    while pre.next && pre.next.val < cur.val
      pre = pre.next
    end
    pre.next, cur.next, cur = cur, pre.next, cur.next
  end
  dummy.next
end
