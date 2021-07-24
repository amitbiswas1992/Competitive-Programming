import UIKit

// 560. Subarray Sum Equals K

func subarraySum(_ nums: [Int], _ k: Int) -> Int {
var m = [Int: Int]()
m[0] = 1

var sum = 0
var ans = 0

for i in nums {
    
    sum += i
    var searchFor = sum - k
    
    if m[searchFor] != nil {
        ans += m[searchFor]!
    }
    if  m[sum] == nil {
        m[sum] = 1
    } else {
        m[sum]! += 1
    }
}
return ans
}
