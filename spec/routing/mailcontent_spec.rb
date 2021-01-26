require 'rails_helper'

 
describe "Mailcontent routing tests" do

  it 'should route Mailcontent  to index' do
   expect(get '/mailcontent').to  route_to('mailcontent#index')
  end

  it 'should route Mailcontent  to show action' do
    expect(get '/mailcontent/1').to  route_to('mailcontent#show', id:'1')
   end

end
 
