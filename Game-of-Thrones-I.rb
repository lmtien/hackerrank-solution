# https://www.hackerrank.com/challenges/game-of-thrones

str = gets.strip

found = true
num_odd = false
  
str.squeeze.each_char do |c|
  if str.count(c).odd?
    if num_odd
      found = false
      break
    else
      num_odd = true
    end
  end
end

puts found ? "YES" : "NO"
