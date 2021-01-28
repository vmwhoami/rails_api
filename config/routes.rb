Rails.application.routes.draw do
  
  get "/mailcontent", to: "mailcontent#index"
  # resources :mailcontent, only: [:index,:show]
end
