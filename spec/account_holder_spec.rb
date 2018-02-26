require 'spec_helper'

describe AccountHolder do

  subject(:account_holder) { described_class.new }

  describe '#check_balance' do
    it 'returns the correct balance for the account holder' do
      account_id = '8a28f09a-c234-4a95-b1e0-cdbc68979d0a'
      expect(account_holder.check_balance(account_id)).to eq "3,702.54"
    end
  end

  describe '#account_holder_details' do
    it 'returns the account details of the account holder' do
      account_id = '8a28f09a-c234-4a95-b1e0-cdbc68979d0a'
      expect { account_holder.account_holder_details(account_id) }
      .to output("First name: Cyrus\nLast name: David\nEmail: Cy.DAVI5969@dispostable.com\nTelephone: 01721 578054\n")
      .to_stdout
    end
  end

end
