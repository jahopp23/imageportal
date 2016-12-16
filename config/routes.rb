Rails.application.routes.draw do
  
  root 'images#index'

  get 'images/index'

  get 'images/new'

  get 'images/edit'
  
  resources :images

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
