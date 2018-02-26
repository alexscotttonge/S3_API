class App

  def check_balance(account_id)
    json_to_hash.map do |account|
      return account['balance'] if account['id'] == account_id
    end
  end

  def account_holder_details(account_id)
    json_to_hash.map do |account|
      if account['id'] == account_id
        puts "First name: #{account['firstname']}"
        puts "Last name: #{account['lastname']}"
        puts "Email: #{account['email']}"
        puts "Telephone: #{account['telephone']}"
      end
    end
  end

  def prints_overdrawn_guid
    json_to_hash.map do |account|
      sanitized_balance = account['balance'].to_s
      overdrawn_accounts = sanitized_balance.match(/^-\d*.\d*.\d*/)
      if overdrawn_accounts
        puts "Account GUID: #{account['id']}"
      end
    end
  end

  def customer_account_check(account_id)
    json_to_hash.map do |account|
      if account['id'] == account_id
        puts "First name: #{account['firstname']}"
        puts "Last name: #{account['lastname']}"
        puts "Email: #{account['email']}"
        puts "Telephone: #{account['telephone']}"
        puts "Balance: #{account['balance']}"
      end
    end
  end

  private

  def json_to_hash
    file = File.read('./customer.json')
    data_hash = JSON.parse(file)
    data_hash['accounts']
  end

end
