

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        
        var max_sum = Int.min 
        var current_sum = 0 
        
        for i in 0..<nums.count {
            current_sum = max (nums[i], nums[i] + current_sum)
            max_sum = max (max_sum, current_sum) 
        }
        
        return max_sum
}
}