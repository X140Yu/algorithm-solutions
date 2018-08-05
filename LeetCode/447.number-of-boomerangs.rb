# https://leetcode.com/problems/number-of-boomerangs/description/

# @param {Integer[][]} points
# @return {Integer}
def number_of_boomerangs(points)
  res = 0
  0.upto(points.count-1).each do |cur_index|
    hash = Hash.new(0)
    points.each_with_index do |point, i|
      next if i == cur_index
      hash[cal_distance(points[cur_index], points[i])] += 1
    end
    
    hash.each do |k, v|
      if v > 1
        res += (v * (v - 1))
      end
    end
  end
  res
end

def cal_distance(p1, p2)
  x1, y1 = p1
  x2, y2 = p2
  (x1-x2)**2 + (y1-y2)**2
end

p number_of_boomerangs([[0,0],[1,0],[2,0]])

# arr = [1,2,1,1,2,3]
# p arr.select { |e| arr.count(e) > 1}.uniq