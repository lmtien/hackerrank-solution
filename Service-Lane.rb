# https://www.hackerrank.com/challenges/service-lane

(n, t) = gets.split.map{|i| i.to_i}
a = gets.split.map{|i| i.to_i}
t.times do
  (i, j) = gets.split.map{|k| k.to_i}
  puts a[i..j].min
end
