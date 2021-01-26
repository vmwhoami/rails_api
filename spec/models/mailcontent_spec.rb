require 'rails_helper'

RSpec.describe Mailcontent, type: :model do
  it 'should validate of the model mailcontent' do
    expect(FactoryBot.build :mailcontent).to be_valid  
  end

  it 'should validate the precense of email' do
    testing = FactoryBot.build :mailcontent, :name => ''
    expect(testing).not_to be_valid
    expect(testing.errors.messages[:name]).to include("can't be blank")
  end
 
  it 'should validate the precense of email' do
    testing = FactoryBot.build :mailcontent, :email => ''
    expect(testing).not_to be_valid
    expect(testing.errors.messages[:email]).to include("can't be blank")
  end

  it 'should validate the precense of the phone number' do
    
  end
end
