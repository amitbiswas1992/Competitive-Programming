import UIKit

// MARK:- 104. Maximum Depth of Binary Tree

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

func maxDepth(_ root: TreeNode? ) -> Int {
    
    func maxDepth(_ root: TreeNode? ) -> Int {
        
        guard let root = root else { return 0 }
        
        // find max depth
        let lMaxDepth = maxDepth(root.left) + 1
        let rMaxDepth = maxDepth(root.right) + 1
        
        return max(lMaxDepth, rMaxDepth)
    }

