# https://leetcode.com/problems/diameter-of-binary-tree/description/

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
def diameter_of_binary_tree(root)
  max_len = [0]
  helper(root, max_len)
  max_len[0]
end

def helper(root, max_len)
  return 0 unless root
  l = helper(root.left, max_len)
  r = helper(root.right, max_len)
  max_len[0] = [max_len[0], l + r].max
  [l, r].max + 1
end