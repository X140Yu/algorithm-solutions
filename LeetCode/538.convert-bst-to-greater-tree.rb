# https://leetcode.com/problems/convert-bst-to-greater-tree/description/

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {TreeNode}
def convert_bst(root)
   convert(root, 0)
   root
end

def convert(root, sum)
  return sum unless root
  root.val += convert(root.right, sum)
  convert(root.left, root.val)
end
