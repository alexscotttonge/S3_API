require 'spec_helper'

describe App do

  subject(:app) { described_class.new }

  describe '#json_to_hash' do
    xit 'parses the customer json file' do
      expected = helper_json
      expect(app.json_to_hash).to eq(expected)
    end
  end

  describe '#check_balance' do
    it 'returns the correct balance for the account holder' do
      account_id = '8a28f09a-c234-4a95-b1e0-cdbc68979d0a'
      expect(app.check_balance(account_id)).to eq "3,702.54"
    end
  end

  describe '#check_first_name' do
    it 'returns the first name of the account holder' do
      account_id = '8a28f09a-c234-4a95-b1e0-cdbc68979d0a'
      first_name = 'Cyrus'
      expect(app.check_first_name(account_id, first_name)).to eq 'Cyrus'
    end
  end

end
