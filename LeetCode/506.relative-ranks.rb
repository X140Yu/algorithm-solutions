# https://leetcode.com/problems/relative-ranks/description/

# @param {Integer[]} nums
# @return {String[]}
def find_relative_ranks(nums)
  sorted = nums.sort.reverse
  res = []
  nums.each do |n|
    index = sorted.index n
    case index
    when 0
      res.push "Gold Medal"
    when 1
      res.push "Silver Medal"
    when 2
      res.push "Bronze Medal"
    else
      res.push (index+1).to_s
    end
  end
  res
end