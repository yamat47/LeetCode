#
# @lc app=leetcode id=1 lang=ruby
#
# [1] Two Sum
#
# https://leetcode.com/problems/two-sum/description/
#
# algorithms
# Easy (49.25%)
# Likes:    41987
# Dislikes: 1370
# Total Accepted:    8.7M
# Total Submissions: 17.6M
# Testcase Example:  '[2,7,11,15]\n9'
#
# Given an array of integers nums and an integer target, return indices of the
# two numbers such that they add up to target.
#
# You may assume that each input would have exactly one solution, and you may
# not use the same element twice.
#
# You can return the answer in any order.
#
#
# Example 1:
#
#
# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
#
#
# Example 2:
#
#
# Input: nums = [3,2,4], target = 6
# Output: [1,2]
#
#
# Example 3:
#
#
# Input: nums = [3,3], target = 6
# Output: [0,1]
#
#
#
# Constraints:
#
#
# 2 <= nums.length <= 10^4
# -10^9 <= nums[i] <= 10^9
# -10^9 <= target <= 10^9
# Only one valid answer exists.
#
#
#
# Follow-up: Can you come up with an algorithm that is less than O(n^2) time
# complexity?
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  sorted_nums = nums.sort.reverse

  pairs = []

  catch(:search) do
    sorted_nums.each_with_index do |num, i|
      sorted_nums.slice(i+1..).each_with_index do |num2, j|
        if num + num2 == target
          pairs = [num, num2]
          throw(:search)
        end
      end
    end
  end

  index1 = nums.index(pairs[0])
  index2 = nums.each_index.find { |index| index != index1 && nums[index] == pairs[1] }

  [index1, index2]
end
# @lc code=end
