import UIKit

func reverse(_ x: Int) -> Int {
    
    var num = abs(x)
    var numToString = String(num)
    var reversedString = String(numToString.reversed())
    var res = Int32(reversedString)
    guard var result = res else {
        return 0
    }
    
    if x < 0 {
         result = result * -1
    }
    
    return Int(result)
}

