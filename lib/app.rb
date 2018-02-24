class App

  def parse_json
    file = File.read('./customer.json')
    data_hash = JSON.parse(file)
  end

end
