require 'bank_account'

describe BankAccount do
  it 'has a balance of zero' do
    expect(subject.balance).to eq(0)
  end

  it {is_expected.to respond_to(:make_deposit).with(1).argument }
  
  it 'can make a deposit' do
    expect{ subject.make_deposit 2000 }.to change{ subject.balance }.by 2000
  end
end