# https://www.hackerrank.com/challenges/gem-stones

t = gets.strip.to_i
str = ''
t.times do
  str += gets.strip.split(//).uniq.join
end

count = 0
str.split(//).uniq.join.each_char do |c|
  count += 1 if str.count(c) == t
end
puts count
