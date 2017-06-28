# https://www.hackerrank.com/challenges/anagram

t = gets.strip.to_i
t.times do
    str = gets.strip
    if str.length.odd?
        puts "-1"
    else
        s1 = str[0..(str.length/2)-1]
        s2 = str[str.length/2..-1]
        count = 0
        s1.split(//).uniq.join.each_char do |c|
            count += s1.count(c) - s2.count(c) if s1.count(c) > s2.count(c)
        end
        puts count
    end
end
