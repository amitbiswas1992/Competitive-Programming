import UIKit

func maxProfit(_ prices: [Int]) -> Int {
    
    guard prices.count > 1 else {
        return 0
    }
    var maxProfit = 0
    
    for i in 1..<prices.count {
        if prices[i] > prices [i - 1] {
            maxProfit = maxProfit + prices[i] - prices[i - 1]
        }
    }
    
    return maxProfit
}

maxProfit([7,1,5,3,6,4])
