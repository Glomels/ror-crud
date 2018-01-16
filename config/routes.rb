Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'wecome#index'
  get 'welcome/index', to: 'welcome#index'
end
