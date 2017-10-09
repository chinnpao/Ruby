def header(&block)
	puts "This is our header."
	block.call
	puts "Put our footer."
	rescue
		puts "This is where we would rescue an error."
	ensure
		puts "I am inside of the ensure block."
end

header do
	puts "This is the body of the block."
	raise "This is an error."
end
