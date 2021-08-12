import UIKit

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var index = 0
        for num in nums
        {
            if num != val
            {
                nums[index] = num
                index += 1
            }
            else
            {
                nums.remove(at:index)
            }
        }
        return nums.count
    }
