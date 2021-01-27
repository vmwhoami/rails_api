Rails.application.routes.draw do
  
  # get '/mailcontent', to: 'mailcontent#index'
  # get '/mailcontent/:id', to: 'mailcontent#show'
  resources :mailcontent ,only:  [:index, :show]
end
