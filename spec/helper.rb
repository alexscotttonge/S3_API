module ReadFile

  def helper_json
    file = File.read('./customer.json')
    data_hash = JSON.parse(file)
    array_hash = data_hash['accounts']
  end

end
