# https://www.hackerrank.com/challenges/hackerland-radio-transmitters

n,k = gets.strip.split.map &:to_i
x = gets.strip.split.map(&:to_i).sort
start, count, i = x[0], 0, 0
until x[i].nil?
    if x[i] - start > k
        start = x[i-1]; count += 1; i = 0
        x.shift while x[0] and x[0] <= start + k; start = x[0]
    end
    i += 1
end
count += 1 if x.any?
puts count
