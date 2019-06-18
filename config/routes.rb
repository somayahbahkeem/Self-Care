Rails.application.routes.draw do
  resources :info_self_cares
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   
  #home page of applicaion
  get '/contact_us', to: "home_page#contact_us", as: "contact_us"
  get '/about', to: "home_page#about", as: "about"
  get '/slfeCareInfo', to: "home_page#slfeCareInfo", as: "slfeCareInfo"
  get '/home_page', to: "home_page#index", as: "home_page"
  root "home_page#index"
end

