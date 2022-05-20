class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        // [1,1,3,4,5,5,6]
        
        var leftPointer = 1 
        
        for rightPointer in 1..<nums.count {
            if nums[rightPointer] != nums[rightPointer - 1] {
                nums[leftPointer] = nums[rightPointer] 
                leftPointer += 1
            }
        }
        
        return leftPointer
}
}