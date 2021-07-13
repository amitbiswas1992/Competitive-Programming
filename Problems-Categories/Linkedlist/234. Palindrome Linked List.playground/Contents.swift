import UIKit

public class ListNode {
      public var val: Int
     public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }

class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        var array: [Int] = []
        var node = head
        while (node != nil){
            
            array.append(node!.val)
            node = node?.next
        }
            var arraySize = array.count
            for i in 0..<arraySize {
            if array[i] != array[arraySize - 1 - i] {
                return false
            }
        }
         return true
    }
    
}
