# [744] Find Smallest Letter Greater Than Target

# https://leetcode.com/problems/find-smallest-letter-greater-than-target/description/

# * algorithms
# * Easy (43.15%)
# * Source Code:       744.find-smallest-letter-greater-than-target.rb
# * Total Accepted:    21.7K
# * Total Submissions: 50.3K
# * Testcase Example:  '["c","f","j"]\n"a"'

# Given a list of sorted characters letters containing only lowercase letters, and given a target letter target, find the smallest element in the list that is larger than the given target.

# Letters also wrap around.  For example, if the target is target = 'z' and letters = ['a', 'b'], the answer is 'a'.

# Examples:

# Input:
# letters = ["c", "f", "j"]
# target = "a"
# Output: "c"

# Input:
# letters = ["c", "f", "j"]
# target = "c"
# Output: "f"

# Input:
# letters = ["c", "f", "j"]
# target = "d"
# Output: "f"

# Input:
# letters = ["c", "f", "j"]
# target = "g"
# Output: "j"

# Input:
# letters = ["c", "f", "j"]
# target = "j"
# Output: "c"

# Input:
# letters = ["c", "f", "j"]
# target = "k"
# Output: "c"

# Note:

# letters has a length in range [2, 10000].
# letters consists of lowercase letters, and contains at least 2 unique letters.
# target is a lowercase letter.

# @param {Character[]} letters
# @param {Character} target
# @return {Character}
def next_greatest_letter(letters, target)
  return nil unless letters || letters.count == 1
  0.upto(letters.count - 2).each do |i|
    return letters[i + 1] if target < letters[i + 1] && target >= letters[i]
  end
  return letters[0] if letters.count == 1 && letters[0] > target || (letters.count > 1)
end

require 'minitest/autorun'

class TestMeSolution < Minitest::Test
  def test_solution
    assert_nil next_greatest_letter(['a'], 'a')
    assert_equal 'c', next_greatest_letter(['c'], 'b')
    assert_equal 'c', next_greatest_letter(%w[a c], 'b')
    assert_equal 'a', next_greatest_letter(%w[a c], 'j')
    assert_equal 'f', next_greatest_letter(%w[c f j], 'c')
  end
end
