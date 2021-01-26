require 'rails_helper'

RSpec.describe Mailcontent, type: :model do
 describe "a specification" do

    it 'should validate the precense of email' do
      testing = build :mailcontent, :name => ''
      expect(testing).not_to be_valid
      expect(testing.errors.messages[:name]).to include("can't be blank")
    end
  
    it 'should validate the precense of email' do
      testing = build :mailcontent, :email => ''
      expect(testing).not_to be_valid
      expect(testing.errors.messages[:email]).to include("can't be blank")
    end

    it 'should validate the precense of the phone number' do
      testing = build :mailcontent, :phone => ''
      expect(testing).not_to be_valid
      expect(testing.errors.messages[:phone]).to include("can't be blank")
    end
 end


 describe ".resent" do
  it "should list recent mailcontent first" do
    old_mailcontent create :mailcontent
    new_mailcontent create :mailcontent
    expect(described_class.recent).to eq([new_mailcontent,new_mailcontent])
    old_mailcontent.update_column :created_at, Time.now
    expect(described_class.recent).to eq([new_mailcontent,new_mailcontent])
  end
  
 end
 
end
