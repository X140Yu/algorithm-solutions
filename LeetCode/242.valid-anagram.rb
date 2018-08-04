# https://leetcode.com/problems/valid-anagram/description/

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  return false if s.length != t.length
  hash = Hash.new(0)
  s.chars.each do |c|
    hash[c] += 1
  end
  t.chars.each do |c|
    hash[c] -= 1
  end

  hash.each do |k, v|
    return false if v != 0
  end

  true
end
