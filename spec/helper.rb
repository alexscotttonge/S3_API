module ReadFile

  def helper_json
    file = File.read('./customer.json')
    data_hash = JSON.parse(file)
    data_hash['accounts']
  end

end
