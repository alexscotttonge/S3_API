require 'spec_helper'

describe App do

  subject(:app) { described_class.new }

  describe '#parse_json' do
    it 'parses the customer json file' do
      expected = helper_json
      expect(app.parse_json).to eq(expected)
    end
  end

  describe '#check_balance' do
    it 'returns the correct balance for the account holder' do
      app.parse_json
      account_id = '8a28f09a-c234-4a95-b1e0-cdbc68979d0a'
      expect(app.check_balance(account_id)).to eq "3,702.54"
    end
  end

end
