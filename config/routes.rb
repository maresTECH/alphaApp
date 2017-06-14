Rails.application.routes.draw do
  resources :entry
  root "entry#index"
end
