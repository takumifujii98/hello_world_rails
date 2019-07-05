Rails.application.routes.draw do
  resources :articles
  resources :users, defaults: { format: :json }
  root 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
