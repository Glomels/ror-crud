Rails.application.routes.draw do
  
  resources :empleados
  resources :sucursals
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '', to: 'welcome#index'
end
