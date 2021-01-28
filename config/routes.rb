Rails.application.routes.draw do
 
  get "/", to: "mailcontent#index"
  get "/:id",to: "mailcontent#show"
  # resources :mailcontent, only: [:index,:show]
end
