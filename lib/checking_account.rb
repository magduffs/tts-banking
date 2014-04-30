class CheckingAccount < BankAccount
	def initialize(name, number, initial_balance, limit)
		super name, number, initial_balance
		@spending_limit = limit
	end

	def print_spending_limit()
		p 'Spending Limit on Checking Account : ' + @spending_limit.to_s
	end
end