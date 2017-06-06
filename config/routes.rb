Rails.application.routes.draw do
  resources :steps
  resources :tasks
  resources :lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'lists#index'
end
