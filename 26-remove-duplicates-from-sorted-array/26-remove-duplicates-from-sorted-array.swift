class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
     
        var l = 1 
        
        for r in 1..<nums.count {
            if nums[r] != nums[r - 1] {
                nums[l] = nums[r] 
                
                l += 1 
            }
        }
        return l
    }
}