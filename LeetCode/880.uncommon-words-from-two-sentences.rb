# We are given two sentences A and B.  (A sentence is a string of space separated words.  Each word consists only of lowercase letters.)

# A word is uncommon if it appears exactly once in one of the sentences, and does not appear in the other sentence.

# Return a list of all uncommon words.

# You may return the list in any order.

# Example 1:

# Input: A = "this apple is sweet", B = "this apple is sour"
# Output: ["sweet","sour"]
# Example 2:

# Input: A = "apple apple", B = "banana"
# Output: ["banana"]

# Note:

# 1. 0 <= A.length <= 200
# 2. 0 <= B.length <= 200
# 3. A and B both contain only spaces and lowercase letters.

# @param {String} a
# @param {String} b
# @return {String[]}
def uncommon_from_sentences(a, b)
  hash = Hash.new(0)
  res = []
  (a + ' ' + b).split(' ').each do |w|
    hash[w] += 1
  end
  hash.select do |k, v|
    res.push k if v == 1
  end
  res
end

require 'minitest/autorun'

class TestMeSolution < Minitest::Test
  def test_solution
    assert_equal %w[sweet sour], uncommon_from_sentences('this apple is sweet', 'this apple is sour')
    assert_equal ['banana'], uncommon_from_sentences('apple apple', 'banana')
  end
end
