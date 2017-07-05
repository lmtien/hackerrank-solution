# https://www.hackerrank.com/challenges/even-tree

def cut_tree(arr, node)
	num_of_node = 1
	num_of_cut = 0
	(0...arr.length).each do |j|
		if arr[node][j] == 1
			n, c = cut_tree(arr, j)
			num_of_node += n
			num_of_cut += c
      #puts "#{node+1}-#{j+1} || #{num_of_node}-#{num_of_cut}"
		end
	end

	if num_of_node % 2 == 0
		num_of_node = 0
		num_of_cut += 1
	end

	return num_of_node, num_of_cut
end

(n, m) = gets.strip.split.map{ |x| x.to_i }
arr = Array.new(n) { Array.new(n, 0) }
m.times do
	(i, j) = gets.strip.split.map{ |x| x.to_i }
	arr[j-1][i-1] = 1
end

puts cut_tree(arr, 0)[1] - 1
