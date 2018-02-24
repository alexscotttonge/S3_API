class App

  def json_to_hash
    file = File.read('./customer.json')
    data_hash = JSON.parse(file)
    data_hash['accounts']
  end

  def check_balance(account_id)
    json_to_hash.map do |account|
      return account['balance'] if account['id'] == account_id
    end
  end

end
