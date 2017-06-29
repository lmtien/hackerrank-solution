# https://www.hackerrank.com/challenges/making-anagrams

a = gets.strip
b = gets.strip

count = 0
unique_str = (a + b).split(//).uniq.join
unique_str.each_char do |c|
   a_count = a.count(c)
   b_count = b.count(c)
   count += (a_count - b_count).abs
end

puts count
