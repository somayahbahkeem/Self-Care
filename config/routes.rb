Rails.application.routes.draw do
  resources :info_self_cares
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   
  #home page of applicaion
  root "home_page#index"
end

