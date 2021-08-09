import UIKit

// MARK:-  Backspace String Compare
func backspaceCompare(_ S: String, _ T: String) -> Bool {

var a: [Character] = []
var b: [Character] = []

for i in S {
    if i == "#" {
        if a.count > 0 {
            a.removeLast()
        }
    }
    else {
        a.append(i)
    }
      
}

for i in T {
    if i == "#"{
        if b.count > 0 {
            b.removeLast()
        }
    }
    else {
        b.append(i)
    }
}

return  a == b


}
