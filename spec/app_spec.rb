require 'spec_helper'

describe App do

  subject(:app) { described_class.new }

  describe '#parse_json' do
    it 'parses the customer json file' do
      expected = helper_json
      expect(app.parse_json).to eq(expected)
    end
  end

end
