require 'bank'

describe Bank do
  it 'responds to open_account' do
    expect(subject).to respond_to :open_account
  end

  it 'creates a bank account' do
    bank_account = subject.open_account
    expect(bank_account).to be_created
  end
end