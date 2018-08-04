# https://leetcode.com/problems/minimum-distance-between-bst-nodes/description/

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
def min_diff_in_bst(root)
  min_diff(root, nil, root.val*2+1)[0]
end

def min_diff(root, prev, min_val)
  return min_val unless root
  min_val, prev = min_diff(root.left, prev, min_val) if root.left
  if prev && root
      min_val = [min_val, root.val - prev.val].min 
  end
  prev = root
  min_val, prev = min_diff(root.right, prev, min_val) if root.right
  [min_val, prev]
end