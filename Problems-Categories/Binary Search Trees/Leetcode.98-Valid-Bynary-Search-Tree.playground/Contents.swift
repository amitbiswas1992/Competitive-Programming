import UIKit


 // Definition for a binary tree node.
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
 
class Solution {
    func isValidBST(_ root: TreeNode?) -> Bool {
        
        if root == nil { return true }
        return isBST(root, min: Int.min ,max: Int.max)
    }
    
    func isBST(_ node: TreeNode?, min: Int, max: Int ) -> Bool {
        if node == nil { return true}
        
        if node!.val <= min || node!.val >= max { return false }
        
        return isBST(node!.left, min: min, max: node!.val) && isBST(node!.right, min: node!.val, max: max)
        
    }
//   left side node vlaue should be less than root node value
//   right side node vlaue should be gratter than root node value
    
}
