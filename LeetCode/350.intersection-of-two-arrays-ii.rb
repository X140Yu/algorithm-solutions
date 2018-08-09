=begin
[350] Intersection of Two Arrays II

https://leetcode.com/problems/intersection-of-two-arrays-ii/description/

* algorithms
* Easy (44.21%)
* Source Code:       350.intersection-of-two-arrays-ii.rb
* Total Accepted:    125.8K
* Total Submissions: 284.5K
* Testcase Example:  '[]\n[]'


Given two arrays, write a function to compute their intersection.


Example:
Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2, 2].


Note:

Each element in the result should appear as many times as it shows in both arrays.
The result can be in any order.



Follow up:

What if the given array is already sorted? How would you optimize your algorithm?
What if nums1's size is small compared to nums2's size? Which algorithm is better?
What if elements of nums2 are stored on disk, and the memory is limited such that you cannot load all elements into the memory at once?

=end

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
  res = []
  hash = Hash.new(0)
  nums1.each do |n|
    hash[n] += 1
  end
  
  nums2.each do |n|
    if hash[n] > 0
      hash[n] -= 1
      res.push n
    end
  end
  res
end
