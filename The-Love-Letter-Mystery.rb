# https://www.hackerrank.com/challenges/the-love-letter-mystery

t = gets.to_i
t.times do
  str = gets.delete("\n")
  steps = 0
  left = 0
  right = str.length - 1
  while left < right
    b_left = str.getbyte(left)
    b_right = str.getbyte(right)
    
    while b_left != b_right
      if b_left > b_right
        b_left -= 1
      else
        b_right -= 1
      end
      steps += 1
    end
    
    left += 1
    right -= 1
  end
  puts steps
end
