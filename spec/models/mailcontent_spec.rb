require 'rails_helper'

RSpec.describe Mailcontent, type: :model do
  it 'should validate of the model mailcontent' do
    expect(FactoryBot.build :mailcontent).to be_valid  
  end

  it 'should validate the precense of email' do
    vitalie = FactoryBot.build :mailcontent, :name => ''
    expect(vitalie).not_to be_valid
    expect(vitalie.error.messages[:name]).to include('Name has to be present')
  end
 
  it 'should validate the precense of the phone name' do
    
  end
end
