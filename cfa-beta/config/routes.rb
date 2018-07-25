Rails.application.routes.draw do

  get 'users/home'
  root 'users#home'

  get 'users/login'

  post 'users/login' => 'users#check'
  delete 'users/login' => 'users#logout'

  get 'users/register'
  post 'users/register' => 'users#create'

  get 'users/edit/:user_name' => 'users#edit',  :as => 'users/edit'
  put 'users/edit/:user_name' => 'users#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
