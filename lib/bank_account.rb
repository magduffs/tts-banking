class BankAccount
		attr_reader :name, :balance
		attr_writer :number

		@@total_deposits = 0
		@last_deposit = 0

	def initialize(name, number, initial_balance)
		@name = name
		@number = number
		@balance = initial_balance
		p 'Initial Balance: $' + @balance.to_s
		puts
	end

	def deposit(amount)
		@last_deposit = amount
		@balance += amount
		p 'Deposited : Current Balance $' + @balance.to_s
		puts

		@@total_deposits +=
	end

	def withdrawal(amount)
		@balance -= amount
		p 'Withdrawal : Current Balance: $' + @balance.to_s
		puts
	end

	def print_statement()
		p 'Name: ' + @name
		p 'Number: ' + @number.to_s
		p 'Balance: $' + @balance.to_s
		puts
	end

#	def close_account()
#		@name = nil
#		@number = nil
#		@balance = nil
#	end

	def print_last_deposit()
		p 'Last: $' + @last_deposit.to_s
		p 'Current Balance: $' + @balance.to_s
		puts
	end

	def rename_account(new_name)
		@name = new_name
	end

	def print_account_name()
		p 'New Account Name : ' + @name
	end

end
