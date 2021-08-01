import UIKit


// MARK:- 392. Is Subsequence

func isSubsequence(_ s: String, _ t: String) -> Bool {
    
    if s == "" { return true }
    var arrayOfString = Array(s)
    var index = 0
    
    for i in t {
        if i == arrayOfString[index] {
            index += 1
        }
        
        if index >= s.count {
            return true
        }
    }
    return false
}
