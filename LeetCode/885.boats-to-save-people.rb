# https://leetcode.com/contest/weekly-contest-96/problems/boats-to-save-people/

# @param {Integer[]} people
# @param {Integer} limit
# @return {Integer}


def num_rescue_boats(people, limit)
  return 0 if people.count == 0
  people = people.sort
  counts = 0
  head = 0
  people.reverse.each_with_index do |weight, i|
      i = people.count - i - 1
      if i < head
          break
      end
      if people[head] + weight <= limit && head < i
          counts += 1
          head += 1
      else
          counts += 1
      end
  end
  
  counts
end