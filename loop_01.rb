name  = ""

until name == "pao" do
	print "Enter username: "
	name = gets.chomp
	puts "Wrong username."
end

puts "Hello #{name}"
