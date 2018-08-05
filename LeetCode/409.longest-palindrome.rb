# @param {String} s
# @return {Integer}
def longest_palindrome(s)
    hash = Hash.new(0)
    s.chars.each do |c|
      hash[c] += 1
    end

    count = 0
    hash.each do |k, v|
      if v >= 2
        count += (v / 2) * 2
      end
    end
    if count == s.length then count else count + 1 end
end