class App

  def parse_json
    file = File.read('./customer.json')
    @data_hash = JSON.parse(file)
  end

  def check_balance(account_id)
    array_hash = @data_hash['accounts']
    array_hash.map do |account|
      return account['balance'] if account['id'] == account_id
    end
  end

end
