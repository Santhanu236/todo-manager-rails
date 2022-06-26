Rails.application.routes.draw do
  resources :todos
  root 'todos#index'
 
  match '/insert', :to=> 'todos#insert', :via => :post
  match '/mac', :to => 'todos#mac', :via => :post
  match '/del', :to => 'todos#del', :via => :post
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
