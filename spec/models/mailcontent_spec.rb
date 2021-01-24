require 'rails_helper'

RSpec.describe Mailcontent, type: :model do
  it 'should validate of the model mailcontent' do
    expect(FactoryBot.build :mailcontent).to be_valid  
  end

  it 'should validate the precense of email' do
    testing = FactoryBot.build :mailcontent, :name => ''
    expect(testing).not_to be_valid
    expect(testing.error.messages[:name]).to include('Name has to be present')
  end
 
  it 'should validate the precense of email' do
    testing = FactoryBot.build :mailcontent, :email => ''
    expect(testing).not_to be_valid
    expect(testing.error.messages[:email]).to include('Email has to be present')
  end

  it 'should validate the precense of the phone number' do
    
  end
end
