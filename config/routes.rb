Rails.application.routes.draw do
  # resources :channels
  # resources :replies
  # resources :discussions
  resources :channels
  resources :discussions do
    resources :replies
  end

  root 'discussions#index'
  
  # root to: 'static_pages#index'
  
  get   'about', to: 'static_pages#about'
  get   'contact', to: 'static_pages#contact'
  get   'privacy', to: 'static_pages#privacy'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
