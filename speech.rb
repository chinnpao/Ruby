class Speech
	def initialize
		print "What is the speech name? "
		@title = gets.chomp
		@lines = []
		while add_line
			puts "Line added."
		end
	end

	def title
		@title
	end

	def add_line
		puts "Add a line: (blank line to exit)"
		line = gets.chomp
		if line.length > 0
			@lines.push line
			return line
		else
			return nil
		end
	end
	
	def each(&block)
		@lines.each { |line| yield line }
	end
end

speech = Speech.new
speech.each do |line|
	puts "[#{speech.title}] #{line}"
end
