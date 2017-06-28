# https://www.hackerrank.com/challenges/two-strings

t = gets.strip.to_i
t.times do
    s1 = gets.strip
    s2 = gets.strip
    flag = false
    s1.split(//).uniq.join.each_char do |c|
        if s2.include?(c)
            flag = true
            break
        end
    end
    puts flag ? 'YES' : 'NO'
end
