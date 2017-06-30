# https://www.hackerrank.com/challenges/alternating-characters

t = gets.strip.to_i
t.times do
  str = gets.strip
  puts str.length - str.squeeze.length
end
