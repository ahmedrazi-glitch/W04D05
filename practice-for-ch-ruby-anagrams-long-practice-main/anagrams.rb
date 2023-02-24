

def anagrams?(str_1, str_2)

end

def first_string(str_1, str_2)
  res = []
  arr = str_1.split('')
  var = arr.permutation.to_a
  var.each do |subarr|
    res << subarr.join('')
  end
  res.include?(str_2)
end

def second_anagram?(str_1, str_2)
  str_1.each_char.with_index do |char, i|
    idx = str_2.index(char)
    str_2[idx] = ''
  end
  str_2.length == 0
end

def third_anagram?(str_1, str_2)
  alpha = ('a'..'z').to_a
  res_1 = ''
  res_2 = ''
  alpha.each do |el|
    str_1.each_char { |char| res_1 += char if el == char }
    str_2.each_char { |char_2| res_2 += char_2 if el == char_2 }
  end
  res_1 == res_2
end

def fourth_anagram?(str_1, str_2)
  hash = Hash.new(0)
  str_1.each_char { |char| hash[char] += 1 }
  hash.keys.join('') == str_2
end




# p anagram?("gizmo", "sally")    #=> false
# p anagram?("elvis", "lives")    #=> true