# https://www.hackerrank.com/challenges/camelcase

#!/bin/ruby

s = gets.strip
count = 0
s.each_char do |c|
    count += 1 if c == c.upcase
end

puts count + 1
