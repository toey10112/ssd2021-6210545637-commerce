
Rails.application.routes.draw do

  namespace :admins do
    resources :products
    namespace :products do
      post 'csv_upload'
    end

  end

  resources :categories
  devise_for :admins
  root 'admins/products#index'
 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
