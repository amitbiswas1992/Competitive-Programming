import UIKit

// 344. Reverse String

func reverseString(_ s: inout [Character]) {

    var j = s.count - 1
    
    for i in 0..<s.count {
        var temp = s[j]
        s[j] = s[i]
        s[i] = temp
        
        j = j - 1
        
        if i >= j {
            break
        }
    }
}
