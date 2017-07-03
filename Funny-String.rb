# https://www.hackerrank.com/challenges/funny-string

t = gets.to_i
t.times do
  str1 = gets.strip
  str2 = str1.reverse
  flag = true
  0.upto(str1.length - 2) do |i|
    flag = false if (str1[i].ord - str1[i+1].ord).abs != (str2[i].ord - str2[i+1].ord).abs
  end
  puts flag ? 'Funny' : 'Not Funny'
end
