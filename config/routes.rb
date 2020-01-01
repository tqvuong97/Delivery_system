Rails.application.routes.draw do
  devise_for :users
  root to: 'home_pages#home'
  get "test",to:'home_pages#test'
  #get "/static_pages/:page", to: "static_pages#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
