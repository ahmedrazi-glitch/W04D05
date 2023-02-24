def my_min(list)
  res = 0
  (0...list.length).each do |i|
    el_1 = list[i]
    (0...list.length).each do |j|
      el_2 = list[j]
      res = el_1 if el_1 < el_2 && el_1 < res
    end
  end
  res
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5 Quadratic

def my_min(list)
  res = list[0]
  (1...list.length).each do |i|
    el = list[i]
    res = el if el < res
  end
  res
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5 Linear


# def largest_contiguous_subsum(list)
#   arr_of_subarr = []
#   (0...list.length).each do |i|
#     (i...list.length).each do |j|
#       arr_of_subarr << list[i..j]
#     end
#   end
#   sums = []
#   arr_of_subarr.each { |el| sums << el.sum }
#   sums.max
# end


# list = [5, 3, -7]
# p largest_contiguous_subsum(list) # => 8 Quadratic 

# possible sub-sums
[5]           # => 5
[5, 3]        # => 8 --> we want this one
[5, 3, -7]    # => 1
[3]           # => 3
[3, -7]       # => -4
[-7]          # => -7


# list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

# list = [-5, -1, -3]
# p largest_contiguous_subsum(list) # => -1 (from [-1])


# Let's make a better version. Write a new function using O(n) time with O(1)
# memory. Keep a running tally of the largest sum. To accomplish this efficient
# space complexity, consider using two variables. One variable should track the
# largest sum so far and another to track the current sum. The rest is left to
# you.


def largest_contiguous_subsum(list)
  res = []
  largest_sum = list[0]
  current_sum = list[0]
  (1...list.length).each do |i|
    current_sum += list[i]
    if largest_sum < current_sum
      largest_sum = current_sum
    end
    if current_sum < 0 
      current_sum = 0
    end
  end
  largest_sum
end

list = [3, -7, 5]
p largest_contiguous_subsum(list) # => 8 Quadratic 

# possible sub-sums
[5]           # => 5
[5, 3]        # => 8 --> we want this one
[5, 3, -7]    # => 1
[3]           # => 3
[3, -7]       # => -4
[-7]          # => -7


# list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

# list = [-5, -1, -3]
# p largest_contiguous_subsum(list) # => -1 (from [-1])