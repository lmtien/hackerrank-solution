# https://www.hackerrank.com/challenges/two-characters

#!/bin/ruby

len = gets.strip.to_i
s = gets.strip
c = s.split('').uniq
max = 0
c.each do |c1|
    c.each do |c2|
        if(c1 != c2)
            temp = s.gsub(Regexp.new("(?!(#{c1}|#{c2}))."),'')  
            if(temp.match(Regexp.new("(^(#{c1}#{c2})+(#{c1})?$)|(^(#{c2}#{c1})+(#{c2})?$)")))
                max = temp.length if temp.length > max
            end
        end
    end
end
puts max
