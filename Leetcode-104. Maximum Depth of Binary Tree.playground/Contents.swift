import UIKit

//104. Maximum Depth of Binary Tree
//Definition for a binary tree node.
 public class TreeNode {
     public var val: Int
     public var left: TreeNode?
     public var right: TreeNode?
     public init() { self.val = 0; self.left = nil; self.right = nil; }
     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
         self.val = val
          self.left = left
         self.right = right
     }
 }

func maxDepth(_ root: TreeNode?) -> Int {

    if root == nil { return 0 }

    var ans = 0
    ans = max ( maxDepth(root!.left), maxDepth(root!.right)) + 1
        return ans
}
