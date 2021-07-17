import UIKit

// Leetcode 9. Palindrome Number


func isPalindrome(_ x: Int) -> Bool {
  
        let str = String(x)
        let reversedNum = String(str.reversed())
        
        if str == reversedNum {
            return true
        }
        return false
    }
