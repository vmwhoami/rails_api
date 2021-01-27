Rails.application.routes.draw do
  
  resources :mailcontent, only: [:index,:show]
end
