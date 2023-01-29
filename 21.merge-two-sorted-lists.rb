#
# @lc app=leetcode id=21 lang=ruby
#
# [21] Merge Two Sorted Lists
#
# https://leetcode.com/problems/merge-two-sorted-lists/description/
#
# algorithms
# Easy (62.24%)
# Likes:    16884
# Dislikes: 1526
# Total Accepted:    3M
# Total Submissions: 4.8M
# Testcase Example:  '[1,2,4]\n[1,3,4]'
#
# You are given the heads of two sorted linked lists list1 and list2.
#
# Merge the two lists in a one sorted list. The list should be made by splicing
# together the nodes of the first two lists.
#
# Return the head of the merged linked list.
#
#
# Example 1:
#
#
# Input: list1 = [1,2,4], list2 = [1,3,4]
# Output: [1,1,2,3,4,4]
#
#
# Example 2:
#
#
# Input: list1 = [], list2 = []
# Output: []
#
#
# Example 3:
#
#
# Input: list1 = [], list2 = [0]
# Output: [0]
#
#
#
# Constraints:
#
#
# The number of nodes in both lists is in the range [0, 50].
# -100 <= Node.val <= 100
# Both list1 and list2 are sorted in non-decreasing order.
#
#
#

# @lc code=start
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  result = []

  return result if list1.nil? && list2.nil?

  current1 = list1
  current2 = list2

  begin
    case
    when current1.nil?
      result << current2.val
      current2 = current2.next
    when current2.nil?
      result << current1.val
      current1 = current1.next
    else
      if current1.val >= current2.val
        result << current2.val
        current2 = current2.next
      else
        result << current1.val
        current1 = current1.next
      end
    end
  end until (current1.nil? && current2.nil?)

  result
end
# @lc code=end
