
module SayHello
	def say_hello
		puts "Hello #{@name}"
	end
end

class Hello
	include SayHello
	
	def initialize(name)
		@name = name
	end
end

hello = Hello.new("Chinnpao")
#hello.extend SayHello

hello.say_hello
