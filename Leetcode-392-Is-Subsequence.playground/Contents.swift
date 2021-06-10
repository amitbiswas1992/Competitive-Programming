import UIKit

func isSubsequence(_ s: String, _ t: String) -> Bool {
    
    if s == "" { return true }
    var s_array = Array(s)
    var index = 0
    
    for i in t {
        if i == s_array[index] {
            index += 1
        }
        
        if index >= s.count {
            return true
        }
    }
   return false
}
       
