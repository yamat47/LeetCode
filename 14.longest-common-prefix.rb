#
# @lc app=leetcode id=14 lang=ruby
#
# [14] Longest Common Prefix
#
# https://leetcode.com/problems/longest-common-prefix/description/
#
# algorithms
# Easy (40.81%)
# Likes:    12252
# Dislikes: 3677
# Total Accepted:    2.1M
# Total Submissions: 5.2M
# Testcase Example:  '["flower","flow","flight"]'
#
# Write a function to find the longest common prefix string amongst an array of
# strings.
#
# If there is no common prefix, return an empty string "".
#
#
# Example 1:
#
#
# Input: strs = ["flower","flow","flight"]
# Output: "fl"
#
#
# Example 2:
#
#
# Input: strs = ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.
#
#
#
# Constraints:
#
#
# 1 <= strs.length <= 200
# 0 <= strs[i].length <= 200
# strs[i] consists of only lowercase English letters.
#
#
#

# @lc code=start
# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
   return '' if strs.size.zero?
   return strs.first if strs.size == 1

   shortest_str = strs.sort_by(&:size).first
   other_strs = strs.filter { |str| str != shortest_str }

   return shortest_str if other_strs.size.zero?

   common_prefix = ''
   shortest_str.chars.each.with_index do |char, index|
      break unless other_strs.all? { |str| str[index] == char }

      common_prefix << char
   end

   common_prefix
end

# @lc code=end

# for Typeprof
longest_common_prefix([])
longest_common_prefix(["flower","flow","flight"])
