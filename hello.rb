module SayHello
	def say_something
		puts "Something"
	end

	def say_hello
		puts "Hello #{@name}"
	end
end

class Hello
	extend SayHello
	include SayHello
	
	def initialize(name)
		@name = name
	end
end

Hello.say_something
