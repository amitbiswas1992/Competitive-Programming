import UIKit

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
       guard let l1 = l1 else { return l2 }
       guard let l2 = l2 else { return l1 }
     
        
       if l1.val < l2.val {
           l1.next =  mergeTwoLists(l1.next, l2)
           return l1
       }
        else {
            l2.next =  mergeTwoLists(l2.next, l1)
            return l2
        }
    }
