# https://www.hackerrank.com/challenges/flipping-the-matrix

# Enter your code here. Read input from STDIN. Print output to STDOUT
q = gets.strip.to_i

q.times do
    n = gets.strip.to_i
    arr = []
    sum = 0
    (2*n).times do
        temp = gets.strip.split.map(&:to_i)
        arr << temp
    end
    
    (0..n-1).each do |i|
        (0..n-1).each do |j|
            sum += [arr[i][j], arr[i][(2*n - j) - 1], arr[(2*n - i) - 1][j], arr[(2*n - i) - 1][(2*n - j) - 1]].max
        end
    end
    
    p sum
end
