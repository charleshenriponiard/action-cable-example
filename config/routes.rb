Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :chatrooms, only: [:show, :index]
  resources :messages, only: [:show, :index]

end
