# https://leetcode.com/problems/n-ary-tree-preorder-traversal/description/

"""
# Definition for a Node.
class Node(object):
    def __init__(self, val, children):
        self.val = val
        self.children = children
"""
class Solution(object):
  # recursive
  def preorder(self, root):
    res = []
    if not root:
      return res
    def Preorder(root, res):
      res.append(root.val)

      for child in root.children:
        Preorder(child, res)
        
    Preorder(root, res)
    return res

  # iterate
  def preorder1(self, root):
    """
    :type root: Node
    :rtype: List[int]
    """
    stack = [root]
    res = []
    while len(stack) > 0:
      node = stack.pop()
      if node:
        res.append(node.val)
        for i in node.children[::-1]:
          stack.append(i)
    return res
      
      