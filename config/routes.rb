Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'heritages#index'
  devise_for :users
  get '/heritages/nation', to: "heritages#nation"
  post 'favorite/:id' => 'favorites#create', as: 'create_favorite'
  delete 'favorite/:id' => 'favorites#destroy', as: 'destroy_favorite'  
  resources :heritages do
    resources :nations
  end
  resources :users
end

  
