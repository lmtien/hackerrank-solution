# https://www.hackerrank.com/challenges/reduced-string

str = gets.strip

pos = 0
while pos < str.length
    str.slice!(pos, 2) if str[pos] == str[pos + 1]
    pos > 0 && str[pos] == str[pos - 1] ? (pos -= 1) : (pos += 1 unless str[pos] == str[pos + 1])
end

puts str.empty? ? "Empty String" : str
