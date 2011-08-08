Cove::Application.routes.draw do
  root :to => "home#index"
  
  resources :issuers
end
