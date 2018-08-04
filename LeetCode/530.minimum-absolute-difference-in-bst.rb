# https://leetcode.com/problems/minimum-absolute-difference-in-bst/description/
# the same as #783 🤔

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
def get_minimum_difference(root)
  arr = get_values(root, [])
  min_val = Float::INFINITY # 1.0/0
  (0...arr.count-1).each do |i|
      min_val = [min_val, arr[i+1] - arr[i]].min
  end
  min_val
end

def get_values(root, arr)
  if root
      get_values(root.left, arr)
      arr.push root.val
      get_values(root.right, arr)
  end
  arr
end