import UIKit

// MARK:- 442. Find All Duplicates in an Array

func findDuplicates(_ nums: [Int]) -> [Int] {
    
    var newArray: [Int] = []
    var array = nums
    
    for i in 0..<array.count {
        var index = abs(array[i]) - 1
        if array[index] < 0 {
            newArray.append(index + 1)
        }
        array[index] = -array[index]
    }

    return newArray

}

