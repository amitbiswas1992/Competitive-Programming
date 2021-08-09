import UIKit

// MARK:- 349. Intersection of Two Arrays


func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
      
       var newArray: [Int] = []
       
       for i in nums1{
           if nums2.contains(i) {
               if !newArray.contains(i) {
                   newArray.append(i)
               }
           }
       }
    
       return newArray
       
   }
