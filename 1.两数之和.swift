/*
 * @lc app=leetcode.cn id=1 lang=swift
 *
 * [1] 两数之和
 */

// @lc code=start
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [Int]()
        var m = [Int: Int]()
        for i in 0..<nums.count {
            
            let matchNum = target - nums[i]
            if let j = m[matchNum], j != i {
                result.append(i)
                result.append(j)
                return result
            }
            m[nums[i]] = i
        }
        return result
    }

    
}

// @lc code=end

