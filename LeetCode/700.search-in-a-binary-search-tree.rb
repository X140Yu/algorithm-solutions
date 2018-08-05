# https://leetcode.com/problems/search-in-a-binary-search-tree/description/

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} val
# @return {TreeNode}
def search_bst(root, val)
  # 😐 so weird that we have to return [] but not nil to pass all tests
  return [] if root.nil?
  if val > root.val
      search_bst(root.right, val)
  elsif val < root.val
      search_bst(root.left, val)
  else
      root
  end
end