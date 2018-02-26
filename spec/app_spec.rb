require 'spec_helper'

describe App do

  subject(:app) { described_class.new }

  describe '#json_to_hash' do
    xit 'parses the customer json file' do
      expected = helper_json
      expect(app.json_to_hash).to eq(expected)
    end
  end

end
