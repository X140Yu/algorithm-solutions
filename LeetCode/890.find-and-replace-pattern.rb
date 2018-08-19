# You have a list of words and a pattern, and you want to know which words in words matches the pattern.

# A word matches the pattern if there exists a permutation of letters p so that after replacing every letter x in the pattern with p(x), we get the desired word.

# (Recall that a permutation of letters is a bijection from letters to letters: every letter maps to another letter, and no two letters map to the same letter.)

# Return a list of the words in words that match the given pattern. 

# You may return the answer in any order.

 

# Example 1:

# Input: words = ["abc","deq","mee","aqq","dkd","ccc"], pattern = "abb"
# Output: ["mee","aqq"]
# Explanation: "mee" matches the pattern because there is a permutation {a -> m, b -> e, ...}. 
# "ccc" does not match the pattern because {a -> c, b -> c, ...} is not a permutation,
# since a and b map to the same letter.
 

# Note:

# 1 <= words.length <= 50
# 1 <= pattern.length = words[i].length <= 20

# @param {String[]} words
# @param {String} pattern
# @return {String[]}
def find_and_replace_pattern(words, pattern)
  res = []
  words.each do |w|
    hash = {}
    has = true
    pattern.chars.each_with_index do |c, i|
      if hash.key?(c)
        if hash[c] != w[i]
          has = false
          break
        end
      else
        hash[c] = w[i]
      end
    end
    arr = []
    hash.each do |k, v|
      arr.push v
    end
    if has and arr.uniq.count == hash.count
      res.push w
    end
  end
  res
end


require 'minitest/autorun'

class TestMeSolution < Minitest::Test
  def test_solution
    assert_equal ["mee","aqq"], find_and_replace_pattern(["abc","deq","mee","aqq","dkd","ccc"], 'abb')
  end
end