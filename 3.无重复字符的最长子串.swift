/*
 * @lc app=leetcode.cn id=3 lang=swift
 *
 * [3] 无重复字符的最长子串
 */

// @lc code=start
class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var map = [Character: Int]()
        var startIndex = 0
        var maxLength = 0

        for (index, char) in s.enumerated() {
            if let i = map[char], i >= startIndex {
                startIndex = (i + 1 ) 
            } 
            let currentLength = index - startIndex + 1
                maxLength = currentLength > maxLength ? currentLength: maxLength
            map[char] = index
        }

        return maxLength
    }
}
// @lc code=end

