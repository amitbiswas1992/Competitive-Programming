import UIKit


public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }
class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    
        var fromWhereToRemove = getSize(head) - n
        // As we remove node from the left node , so in that case if we stand on the head (first node ) then            we have nothing there. That means 0. so we are handling the case here.
        if fromWhereToRemove == 0 {
            return head?.next
        }
        var index = 1
        var node = head
        while (node?.next != nil) {
            if index == fromWhereToRemove {
               node?.next = node?.next?.next
            }
            index += 1
            node = node?.next
           
        }
        
        return head
    }

    func getSize(_ head: ListNode?) -> Int {
        var node = head
        var size = 1
        while (node?.next != nil ) {
            node = node?.next
            size += 1
        }
        print(size)
        return size
    }
}
