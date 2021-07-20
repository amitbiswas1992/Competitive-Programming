import UIKit


  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
 

    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        guard head != nil else {
            return head
        }
        
        var fromWhereToRemove =  sizeOfList(head) - n
        // Handling corner case for prev node of 1 node, because prev node od 1st node  is 0 / nil
        
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
    
    func sizeOfList(_ head: ListNode?) -> Int {
        var node = head
        var size = 1
        
        while (node?.next != nil) {
            node = node?.next
            size += 1
        }
        return size
    }

