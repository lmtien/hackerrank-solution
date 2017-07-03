# https://www.hackerrank.com/challenges/pangrams

str = gets.strip.downcase
flag = true
('a'..'z').each do |c|
  if !str.include?(c)
    flag = false
    break
  end
end
puts flag ? 'pangram' : 'not pangram'
