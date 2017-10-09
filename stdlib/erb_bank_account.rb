require 'erb'

class BankAccount
	TEMP = <<-TEMPLATE #we can change to any name of the obj difference from TEMP and TEMPLATE
	Bank Account: <%= @name %>
	---
	<% @transactions.each do |transaction| %>
		Transaction: <%= transaction %>
	<% end %>
	---
	TEMPLATE
	
	def initialize(name)
		@name = name
		@transactions = []
	end

	def deposit(amount)
		@transactions.push(amount)
	end

	def withdraw(amount)
		@transactions.push(-amount)
	end

	def get_binding
		binding
	end

	def display
		ERB.new(TEMP).result(get_binding)
	end
end

account = BankAccount.new("Chinnpao Taing")
account.deposit(100)
account.withdraw(2)
account.withdraw(30)
account.deposit(200)
puts account.display

