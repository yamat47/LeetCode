#
# @lc app=leetcode id=200 lang=ruby
#
# [200] Number of Islands
#
# https://leetcode.com/problems/number-of-islands/description/
#
# algorithms
# Medium (56.78%)
# Likes:    19054
# Dislikes: 424
# Total Accepted:    2.1M
# Total Submissions: 3.7M
# Testcase Example:  '[["1","1","1","1","0"],["1","1","0","1","0"],["1","1","0","0","0"],["0","0","0","0","0"]]'
#
# Given an m x n 2D binary grid grid which represents a map of '1's (land) and
# '0's (water), return the number of islands.
# 
# An island is surrounded by water and is formed by connecting adjacent lands
# horizontally or vertically. You may assume all four edges of the grid are all
# surrounded by water.
# 
# 
# Example 1:
# 
# 
# Input: grid = [
# ⁠ ["1","1","1","1","0"],
# ⁠ ["1","1","0","1","0"],
# ⁠ ["1","1","0","0","0"],
# ⁠ ["0","0","0","0","0"]
# ]
# Output: 1
# 
# 
# Example 2:
# 
# 
# Input: grid = [
# ⁠ ["1","1","0","0","0"],
# ⁠ ["1","1","0","0","0"],
# ⁠ ["0","0","1","0","0"],
# ⁠ ["0","0","0","1","1"]
# ]
# Output: 3
# 
# 
# 
# Constraints:
# 
# 
# m == grid.length
# n == grid[i].length
# 1 <= m, n <= 300
# grid[i][j] is '0' or '1'.
# 
# 
#

# @lc code=start
# @param {Character[][]} grid
# @return {Integer}
def num_islands(grid)
  result = 0

  max_x = grid.first.size - 1
  max_y = grid.size - 1

  grid.each.with_index do |row, row_index|
    row.each.with_index do |cell, cell_index|
      if cell == '1'
        result += 1
        erace_same_land(grid, cell_index, row_index, max_x, max_y)
      end
    end
  end

  p result
end

def erace_same_land(grid, x, y, max_x, max_y)
  grid[y][x] = '0'

  [[0, 1], [1, 0], [0, -1], [-1, 0]].each do |x_move, y_move|
    new_x = x + x_move
    new_y = y + y_move

    next unless new_x.between?(0, max_x)
    next unless new_y.between?(0, max_y)
    next if grid[new_y].nil?
    next unless grid[new_y][new_x] == '1'

    erace_same_land(grid, new_x, new_y, max_x, max_y)
  end
end
# @lc code=end
