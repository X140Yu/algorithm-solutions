# https://leetcode.com/problems/sum-of-left-leaves/description/

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
def sum_of_left_leaves(root)
  cal_sum(root, 0, false)
end

# @param [Node] root node
# @param [Integer] sum
# @param [Bool] is_left whether the current root is left child
#
# @return [Integer] sum of left leaves val
#
def cal_sum(root, sum, is_left)
  return sum unless root
  sum = cal_sum(root.left, sum, true) if root.left
  sum += root.val if is_left && root.left.nil? && root.right.nil?
  sum = cal_sum(root.right, sum, false) if root.right
  sum
end
  