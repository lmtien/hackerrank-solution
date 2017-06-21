# https://www.hackerrank.com/challenges/ctci-ransom-note

#!/bin/ruby

m,n = gets.strip.split(' ')
m = m.to_i
n = n.to_i
magazine = gets.strip
magazine = magazine.split(' ')
ransom = gets.strip
ransom = ransom.split(' ')

ransom_table = Hash.new
ransom.each do |word|
    ransom_table.has_key?(word) ? ransom_table[word] += 1 : ransom_table[word] = 1
end

magazine.each do |word|
    ransom_table[word] -= 1 if ransom_table.has_key?(word)
end

flag = true
ransom_table.each_key do |key|
    flag = false if ransom_table[key] > 0
end

print flag ? 'Yes' : 'No'
