Rails.application.routes.draw do
  resources :staffs

  get 'users/home'

  get 'users/login'

  post 'users/login' => 'users#check'

  get 'users/register'

  post 'users/register' => 'users#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
