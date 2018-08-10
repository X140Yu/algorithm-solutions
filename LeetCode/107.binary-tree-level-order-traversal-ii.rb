# [107] Binary Tree Level Order Traversal II

# https://leetcode.com/problems/binary-tree-level-order-traversal-ii/description/

# * algorithms
# * Easy (43.22%)
# * Source Code:       107.binary-tree-level-order-traversal-ii.rb
# * Total Accepted:    177.2K
# * Total Submissions: 409.4K
# * Testcase Example:  '[3,9,20,null,null,15,7]'

# Given a binary tree, return the bottom-up level order traversal of its nodes' values. (ie, from left to right, level by level from leaf to root).

# For example:
# Given binary tree [3,9,20,null,null,15,7],

#     3
#    / \
#   9  20
#     /  \
#    15   7

# return its bottom-up level order traversal as:

# [
#   [15,7],
#   [9,20],
#   [3]
# ]

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[][]}
def level_order_bottom(root)
  queue = [root]
  res = []
  until queue.empty?
    tmp = []
    rr = []
    until queue.empty?
      node = queue.shift
      next unless root
      rr.push node.val
      tmp.push node.left if node.left
      tmp.push node.right if node.right
    end
    res.push rr unless rr.empty?
    queue = tmp
  end
  res.reverse
end
