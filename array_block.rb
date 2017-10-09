arr = [1, 2, 3, 4, 5]

puts arr.inspect

arr.each do |number|
	number *= 2
	puts "The number is #{number}."
end

puts arr.inspect

