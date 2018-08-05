# https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/description/

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
  helper(nums, 0, nums.count - 1)
end

def helper(nums, left, right)
  return nil if left > right
  mid = (left + right) / 2
  node = TreeNode.new(nums[mid])
  node.left = helper(nums, left, mid-1)
  node.right = helper(nums, mid+1, right)
  node
end