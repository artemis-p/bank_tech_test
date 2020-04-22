require 'bank_account'

describe BankAccount do
  it { is_expected.to respond_to :created? }
  it 'has a balance of zero' do
    expect(subject.balance).to eq(0)
  end

  it {is_expected.to respond_to(:make_deposit).with(1).argument }
  
  it 'can make a deposit' do
    expect{ subject.make_deposit 2000 }.to change{ subject.balance }.by 2000
  end

  it {is_expected.to respond_to(:make_withdrawal).with(1).argument }
  
  it 'can make a withdrawal' do
    subject.make_deposit(500)
    expect{ subject.make_withdrawal 40}.to change{ subject.balance }.by -40
  end

end