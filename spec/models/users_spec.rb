require_relative "../spec_helper"

describe "User Model" do
  let(:kiran){User.create(email:"kiran@gmail.com", password:"123")}

  before do
    kiran
  end

  it 'should have a email' do
    expect(kiran.email).to eq("kiran@gmail.com")
  end

end