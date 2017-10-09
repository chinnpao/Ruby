def get_name(&block)
	print "Enter your name: "
	n = gets.chomp
	yield n
	puts "It was nice to meet you, #{n}."
end

get_name do |name|
	puts "Hi, #{name}."
	name = name.upcase
	puts "Uppercased, your name is #{name}."
end

get_name { |n| puts "Welcome, #{n}." }
