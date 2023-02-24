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


def largest_contiguous_subsum(list)
  arr_of_subarr = []
  (0...list.length).each do |i|
    (i...list.length).each do |j|
      arr_of_subarr << list[i..j]
    end
  end
  sums = []
  arr_of_subarr.each { |el| sums << el.sum }
  sums.max
end


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

def largest_contiguous_subsum(list)
  hash = Hash.new { |hash, k| hash[k] = [] }
  list.each do |i|
    
  end

end

list = [5, 3, -7]
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