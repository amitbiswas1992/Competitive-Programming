class Solution {
    func isPalindrome(_ x: Int) -> Bool {
  
        var str = String(x)
        var reversedNum = String(str.reversed())
        
        if str == reversedNum {
            return true 
        }
        return false 
    }
}