class MainController < ApplicationController
	
	require 'bank_account.rb';
	
	require 'checking_account.rb'

	def play
		ba = BankAccount.new('David', 123, 5000)

		ba.deposit(500)
		ba.withdrawal(1000)
		ba.print_last_deposit
		ba.print_statement
		ba.rename_account("Magdalyn's Millions")
		ba.print_account_name

		ca = CheckingAccount.new('Betsy', 988, 25000, 1000)
		ca.print_spending_limit

		head :ok
	end
end