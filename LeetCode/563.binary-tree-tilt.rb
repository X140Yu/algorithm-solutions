# https://leetcode.com/problems/binary-tree-tilt/description/

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
def find_tilt(root)
  sum = [0]
  helper(root, sum)
  sum[0]
end

def helper(root, sum)
  return 0 unless root
  sum_l = if root.left then helper(root.left, sum)  else 0 end
  sum_r = if root.right then helper(root.right, sum) else 0 end
  sum[0] += (sum_l - sum_r).abs
  sum_l + sum_r + root.val
end