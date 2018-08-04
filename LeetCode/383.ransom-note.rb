# https://leetcode.com/problems/ransom-note/description/

# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  hash = Hash.new(0)
  magazine.chars.each do |c|
      hash[c] += 1
  end
  ransom_note.chars.each do |c|
      hash[c] -= 1
      return false if hash[c] < 0
  end
  true
end