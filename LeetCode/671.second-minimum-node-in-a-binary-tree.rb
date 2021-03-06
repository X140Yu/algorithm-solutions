# [671] Second Minimum Node In a Binary Tree

# https://leetcode.com/problems/second-minimum-node-in-a-binary-tree/description/

# * algorithms
# * Easy (42.08%)
# * Source Code:       671.second-minimum-node-in-a-binary-tree.rb
# * Total Accepted:    30K
# * Total Submissions: 71.3K
# * Testcase Example:  '[2,2,5,null,null,5,7]'


# Given a non-empty special binary tree consisting of nodes with the non-negative value, where each node in this tree has exactly two or zero sub-node. If the node has two sub-nodes, then this node's value is the smaller value among its two sub-nodes.



# Given such a binary tree, you need to output the second minimum value in the set made of all the nodes' value in the whole tree.



# If no such second minimum value exists, output -1 instead.


# Example 1:

# Input:
#     2
#    / \
#   2   5
#      / \
#     5   7

# Output: 5
# Explanation: The smallest value is 2, the second smallest value is 5.



# Example 2:

# Input:
#     2
#    / \
#   2   2

# Output: -1
# Explanation: The smallest value is 2, but there isn't any second smallest value.

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def find_second_minimum_value(root)
  return -1 unless root
  return -1 unless root.left || root.right

  l = root.left.val == root.val ? find_second_minimum_value(root.left) : root.left.val
  r = root.right.val == root.val ? find_second_minimum_value(root.right) : root.right.val

  return r if l == -1
  return l if r == -1
  [l, r].min
end
