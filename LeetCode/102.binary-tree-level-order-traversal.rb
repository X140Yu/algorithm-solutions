# [102] Binary Tree Level Order Traversal

# https://leetcode.com/problems/binary-tree-level-order-traversal/description/

# * algorithms
# * Medium (43.95%)
# * Source Code:       102.binary-tree-level-order-traversal.rb
# * Total Accepted:    267.7K
# * Total Submissions: 605.9K
# * Testcase Example:  '[3,9,20,null,null,15,7]'

# Given a binary tree, return the level order traversal of its nodes' values. (ie, from left to right, level by level).


# For example:
# Given binary tree [3,9,20,null,null,15,7],

#     3
#    / \
#   9  20
#     /  \
#    15   7



# return its level order traversal as:

# [
#   [3],
#   [9,20],
#   [15,7]
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
def level_order(root)
  return [] unless root
  res = []
  queue = [root]
  until queue.empty?
    tmp_queue = []
    level_nodes = []
    until queue.empty?
      node = queue.shift
      next unless node
      level_nodes.push node.val
      tmp_queue.push node.left
      tmp_queue.push node.right
    end
    queue = tmp_queue
    res.push level_nodes unless level_nodes.empty?
  end
  res
end
