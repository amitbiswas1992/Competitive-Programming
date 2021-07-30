import UIKit

// 283. Move Zeroes

func moveZeros(_ nums: inout [Int]) {
    
    var g = 0
    for i in 0..<nums.count {
        if  nums[i] != 0 {
            nums.swapAt(i, g)
            g += 1
        }
    }
}


