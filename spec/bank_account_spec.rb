require 'bank_account'

describe BankAccount do
  it 'has a balance of zero' do
    expect(subject.balance).to eq(0)
  end
end