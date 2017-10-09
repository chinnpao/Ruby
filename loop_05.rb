name = ""
checkUser = false

loop do
	if checkUser == false
		print "Enter your username: "
		name = gets.chomp
		if name == "Pao"
			checkUser = true
		else
			puts "Wrong username."	
		end
	end

	if checkUser == true
		puts "Enter your password: "
		pass = gets.chomp
		if pass == "12345"
			puts "Login success."
			break
		elsif
			puts "Wrong password."
		end
	end
end
