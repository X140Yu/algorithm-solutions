# https://leetcode.com/problems/first-unique-character-in-a-string/description/

# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  hash = Hash.new { |h, k| h[k] = [] }
  s.chars.each_with_index do |c, i|
    hash[c].push i
  end

  s.chars.each_with_index do |c, i|
    return i if hash[c].count == 1
  end
  -1
end