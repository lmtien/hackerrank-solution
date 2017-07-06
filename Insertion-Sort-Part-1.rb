# https://www.hackerrank.com/challenges/insertionsort1

def  insertionSort(ar) 
    num = ar[ar.length - 1]
    idx = ar.length - 1
    ar.each_index do |x|
        if ar[x] > num
            idx = x
            break
        end
    end
    (1..ar.length).each do |x|
        cur_idx = ar.length - x
        break if cur_idx == idx
        ar[cur_idx] = ar[cur_idx - 1]
        puts ar.join(' ')
    end
    ar[idx] = num
    puts ar.join(' ')
end
count = gets.to_i
ar = gets.strip.split.map {|i| i.to_i}

insertionSort(ar)
