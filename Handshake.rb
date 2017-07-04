# https://www.hackerrank.com/challenges/handshake

def factorial(n)
  return n.downto(1).reduce(1, :*)
end

t = gets.strip.to_i
t.times do
  n = gets.strip.to_i
  #puts n > 1 ? factorial(n)/(factorial(2)*factorial(n - 2)) : 0
  puts n*(n-1)/2
end
