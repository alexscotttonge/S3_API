require_relative 'account_holder'
require_relative 'customer'
require 'json'



puts "Are you are an account holder (y/n)"

answer = gets.chomp

if answer == 'y'
  puts "Do you want to check your account balance? (y/n)"
  answer = gets.chomp
  if answer == 'y'
    puts "Please enter your account id"
    account_id = gets.chomp
    AccountHolder.new.check_balance(account_id)
  elsif answer == 'n'
    puts "Do you want to check your account details (y/n)"
    answer = gets.chomp
    if answer == 'y'
      puts "Please enter your account id"
      account_id = gets.chomp
      AccountHolder.new.account_holder_details(account_id)
    end
  end
elsif answer == 'n'
  puts "Are you a customer? (y/n)"
  answer = gets.chomp
  if answer == 'y'
    puts "Hit 'o' to access overdrawn accounts or 'c' to check an accounts details"
    answer = gets.chomp
    if answer == 'o'
      Customer.new.prints_overdrawn_guid
    elsif answer == 'c'
      puts "Enter account GUID"
      account_id = gets.chomp
      Customer.new.customer_account_check(account_id)
    end
  end
end
