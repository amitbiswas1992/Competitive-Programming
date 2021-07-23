import UIKit

//125. Valid Palindrome


 func isPalindrome(_ s: String) -> Bool {

    var i = 0
    var j = s.count - 1
    var stringArray = Array(s)
    
    while i < j
     {
        
        while ( i < j && !stringArray[i].isLetter && !stringArray[i].isNumber ) {
            i += 1
        }
        while i < j && !stringArray[j].isLetter && !stringArray[j].isNumber {
            j -= 1
        }
        
        if (stringArray[i].lowercased()  != stringArray[j].lowercased()) {
            return false
        }
            
        i += 1
        j -= 1
         
     }
        return true
}
 
