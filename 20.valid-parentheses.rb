#
# @lc app=leetcode id=20 lang=ruby
#
# [20] Valid Parentheses
#
# https://leetcode.com/problems/valid-parentheses/description/
#
# algorithms
# Easy (40.48%)
# Likes:    17760
# Dislikes: 982
# Total Accepted:    3M
# Total Submissions: 7.4M
# Testcase Example:  '"()"'
#
# Given a string s containing just the characters '(', ')', '{', '}', '[' and
# ']', determine if the input string is valid.
#
# An input string is valid if:
#
#
# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Every close bracket has a corresponding open bracket of the same type.
#
#
#
# Example 1:
#
#
# Input: s = "()"
# Output: true
#
#
# Example 2:
#
#
# Input: s = "()[]{}"
# Output: true
#
#
# Example 3:
#
#
# Input: s = "(]"
# Output: false
#
#
#
# Constraints:
#
#
# 1 <= s.length <= 10^4
# s consists of parentheses only '()[]{}'.
#
#
#

# @lc code=start
# @param {String} s
# @return {Boolean}
def is_valid(s)
  stacks = []
  s.each_char do |char|
    case char
    when '(', '[', '{'
      stacks << char
    when ')'
      return false if stacks.pop != '('
    when ']'
      return false if stacks.pop != '['
    when '}'
      return false if stacks.pop != '{'
    end
  end

  stacks.empty?
end
# @lc code=end
