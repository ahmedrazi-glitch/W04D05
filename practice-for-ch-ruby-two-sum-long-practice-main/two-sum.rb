

def bad_two_sum?(array, target)
    (0...array.length).each do |i|
        (0...array.length).each do |j|
            return true if j > i && array[i] + array[j] == target
        end
    end
    false
end

arr = [0, 1, 5, 7]
p bad_two_sum?(arr, 6) # => should be true
p bad_two_sum?(arr, 10) # => should be false


def okay_two_sum?(array, target)
    res = []
    left = []
    right = []
    pivot = array[0]
    (1...array.length).each do |i|
        el = array[i]
        if el < pivot
            left << el
        elsif el > pivot
            right << el
        end
    end 
    res.concat(left, right)
end

p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false