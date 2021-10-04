Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'heritages#index'
  get 'heritage/argentina' => 'heritages/new#argentina'

  resources :heritages
    
   namespace :admin do
     resources :managers, only: [:index, :new, :create, :show, :edit]
   end
  
  resources :users
end

  
