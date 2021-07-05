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
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        

        guard nums != nil else {
            return nil
        }
         var leftIndex = 0
         var rightIndex = nums.count - 1
        
        return constructBST (array: nums, leftIndex: leftIndex, rightIndex: rightIndex)
    }
    
    private func constructBST (array: [Int],  leftIndex: Int, rightIndex: Int ) -> TreeNode? {
        
        if leftIndex > rightIndex {
            return nil
        }
        var middleIndex = (leftIndex + rightIndex) / 2
        var rootValue = TreeNode(array[middleIndex] )
        
        rootValue.left = constructBST (array: array, leftIndex: leftIndex , rightIndex: middleIndex - 1 )
        rootValue.right = constructBST (array: array, leftIndex: middleIndex + 1 , rightIndex: rightIndex )
        
        return rootValue
    }
}
