require 'bank'

describe Bank do
  it 'responds to open_account' do
    expect(subject).to respond_to :open_account
  end
end