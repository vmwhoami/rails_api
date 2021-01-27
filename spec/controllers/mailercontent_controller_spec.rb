require 'rails_helper'

 
describe MailcontentController do
  describe "#index" do
  subject { get :index }
      it 'should return a succes response' do
        expect(response).to  have_http_status(:ok)
      end

  end
end
 
