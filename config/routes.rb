Rails.application.routes.draw do
  resources :items
  resources :orders
  resources :buses do
    collection {post :import}
  end
  devise_for :users
  root to: 'home_pages#home'
  get "test",to:'home_pages#test'
  #get "/static_pages/:page", to: "static_pages#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
