import UIKit


func maxProfit(_ prices: [Int]) -> Int {
   
    if prices.count < 1 {
        return 0
    }
    
    var currentProfit = 0
    var maxProfit     = 0
    
    for i in 1..<prices.count {
      currentProfit = currentProfit + prices[i] - prices[i - 1]
      currentProfit = max (0, currentProfit)
      maxProfit = max(currentProfit, maxProfit)
    }
    
    return maxProfit
}
