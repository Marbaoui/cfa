Rails.application.routes.draw do
  resources :staffs
  
  get 'users/home'

  get 'users/login'

  post 'users/login' => 'users#check'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
