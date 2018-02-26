require 'spec_helper'

describe App do

  subject(:app) { described_class.new }

  describe '#json_to_hash' do
    xit 'parses the customer json file' do
      expected = helper_json
      expect(app.json_to_hash).to eq(expected)
    end
  end

  describe '#prints_overdrawn_guid' do
    it 'prints the balances for all customers' do
      expect { app.prints_overdrawn_guid }.to output.to_stdout
    end
  end

  describe '#customer_account_check' do
    it 'returns the account details of an account' do
      account_id = '0dafb276-1620-42ce-bbc5-477209733d5c'
      expect { app.customer_account_check(account_id) }
      .to output("First name: Giana\nLast name: Mueller\nEmail: Gian.MUEL3296@yopmail.com\nTelephone: 01178 766240\nBalance: -6,454.72\n")
      .to_stdout
    end
  end

end
