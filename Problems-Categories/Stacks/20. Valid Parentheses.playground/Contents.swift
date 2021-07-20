import UIKit


//20. Valid Parentheses

func isValid(_ s: String) -> Bool {
    
    if s.count % 2 != 0 {
        return false
    }
    var stack: [Character] = []
    
    for i in s {
        if  i == "(" || i == "{" || i == "["  {
            stack.append(i)
        }
        else if i == ")" && !stack.isEmpty && stack.last == "(" {
            stack.removeLast()
        }
        else if i == "}" && !stack.isEmpty && stack.last == "{" {
            stack.removeLast()
        }
        else if i == "]" && !stack.isEmpty && stack.last == "[" {
            stack.removeLast()
        }
        else {
            return false 
        }
    }
    
    
    return stack.isEmpty
    
}

isValid("([)]")
