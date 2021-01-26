require 'rails_helper'

 
describe "Mailcontent routing tests" do

  it 'should route Mailcontent  to index' do
   expect(get '/mailcontent').to  route_to('mailcontent#index')
  end
  
end
 
