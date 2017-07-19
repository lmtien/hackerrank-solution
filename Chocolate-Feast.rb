# https://www.hackerrank.com/challenges/chocolate-feast

t = gets.to_i
   t.times{
      (n, c, m) = gets.split.map{|i| i.to_i}
      
        ans = (n/c).floor
     temp = ans
     ori = ans
     while temp >= m
       ans += (temp/m).floor
       ori -= (temp/m).floor * m
       temp = ori + (temp/m).floor
       ori = temp
     end
        puts ans
   }
