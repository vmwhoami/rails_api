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
end
