import UIKit


class Solution {
    func deleteNode(_ node: ListNode?) {
        if node == nil || node?.next == nil { return }
        
        node?.val = node!.next!.val
        node?.next = node?.next?.next
        
    }
}
