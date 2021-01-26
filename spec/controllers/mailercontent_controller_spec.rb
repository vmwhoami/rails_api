require 'rails_helper'

 
describe MailcontentController do
  describe "#index" do
  subject { get :index }
      it 'should return a succes response' do
        expect(response).to  have_http_status(:ok)
      end


      it 'should return proper json' do
        # json = JSON.parse(response.body)
        # pp json
        # json_data = json['data']
        # expect(json_data.lenght).to eq(2)  
    end

    it "should return Mailcontents in the proper order" do
      subject
      old_mailcontent = create :mailcontent
      new_mailcontent = create :mailcontent
      expect(json_data.first['id']).to eq(new_mailcontent.id.to_s)
    end
    
  end
end
 
