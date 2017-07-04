# https://www.hackerrank.com/challenges/connecting-towns

t = gets.strip.to_i
t.times do
  #n = gets.strip.to_i
  gets
  routes = gets.strip.split.map{|x| x.to_i}
  puts routes.reduce(1, :*).remainder(1234567)
end
