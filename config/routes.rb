Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   
  #home page of applicaion
  root to: "home_page#index"
end

