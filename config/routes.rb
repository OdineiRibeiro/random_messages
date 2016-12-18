Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'messages#random'
  resources :messages, only: [:index, :new, :show, :create, :random]
end
