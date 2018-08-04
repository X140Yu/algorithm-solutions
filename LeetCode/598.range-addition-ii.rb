# https://leetcode.com/problems/range-addition-ii/description/

# @param {Integer} m
# @param {Integer} n
# @param {Integer[][]} ops
# @return {Integer}
def max_count(m, n, ops)
    return m * n if ops.empty?
    min_m = 1.0/0
    min_n = 1.0/0
    ops.each do |op|
      min_m = [min_m, op[0]].min
      min_n = [min_n, op[1]].min
    end
    min_m * min_n

    ## code below will cause Memory Limit Exceeded
    # matrix = Array.new(m) { Array.new(n, 0) }
    # max_val = 0
    # max_count = 0
    # ops.each do |op|
    #   (0...op[0]).each do |x|
    #     (0...op[1]).each do |y|
    #       matrix[x][y] += 1
    #       cur = matrix[x][y]
    #       if max_val < cur
    #         max_val = cur
    #         max_count = 1
    #       elsif max_val == cur
    #         max_count += 1
    #       end
    #     end
    #   end
    # end
    # max_count
end


# p max_count(39999, 39999, [[19999,19999]])