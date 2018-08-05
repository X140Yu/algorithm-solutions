# https://leetcode.com/problems/assign-cookies/description/

# @param {Integer[]} g
# @param {Integer[]} s
# @return {Integer}
def find_content_children(g, s)
  g.sort!
  s.sort!
  count = 0
  g.each do |gg|
    has = false
    index = nil
    s.each_with_index do |ss, i|
      if gg <= ss
        has = true
        index = i
        break
      end
    end
    if has
      s.delete_at(index)
      count += 1
    end
  end
  count
end
