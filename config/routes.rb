Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'heritages#index'
  get '/heritages/nation', to: "heritages#nation"
  resources :heritages do
    resources :nations
    
  end
  post 'favorite/:id' => 'favorites#create', as: 'create_favorite'
  delete 'favorite/:id' => 'favorites#destroy', as: 'destroy_favorite'
  # resources :news
  #  resources :admin do
  #    resources :managers, only: [:index, :new, :create, :show, :edit]
  #  end
  #  resources :heritages, only: [:new, :create, :edit, :update, :show, :destroy] do
  #   resources :favorites, only: [:create, :destroy]
  #  end
  #  resources :users, only: [:show] do
  #   resources :favorites, only: [:index]
  #  end
  

  
  resources :users
end

  
