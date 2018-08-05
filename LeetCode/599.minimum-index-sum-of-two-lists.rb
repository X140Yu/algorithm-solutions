# https://leetcode.com/problems/minimum-index-sum-of-two-lists/description/

# @param {String[]} list1
# @param {String[]} list2
# @return {String[]}
def find_restaurant(list1, list2)
  hash = Hash.new(0)
  min_value = 1.0/0
  res = []

  list1.each_with_index do |l, i|
    hash[l] += i
  end
  list2.each_with_index do |l, i|
    if hash.has_key? l
      value = i + hash[l]
      if value < min_value
        min_value = value
        res = [l]
      elsif value == min_value
        res.push l
      end
    end
  end
  res
end