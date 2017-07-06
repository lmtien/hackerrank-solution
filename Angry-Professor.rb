# https://www.hackerrank.com/challenges/angry-professor

t = gets.to_i
t.times do
  (n, k) = gets.split.map{|x| x.to_i}
  a = gets.split.map{|x| x.to_i}
  students = a.count{|x| x <= 0}
  puts students < k ? 'YES' : 'NO'
end
