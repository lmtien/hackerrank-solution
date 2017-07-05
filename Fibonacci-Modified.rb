# https://www.hackerrank.com/challenges/fibonacci-modified

def fibo(a, b, n)
  return a if n == 1
  return b if n == 2
  return fibo(a, b, n-1)**2 + fibo(a, b, n-2)
end

(a, b, n) = gets.strip.split.map{|x| x.to_i}
puts fibo(a, b, n)
