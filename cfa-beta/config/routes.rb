Rails.application.routes.draw do

  get 'users/home'
  root 'users#home'

  get 'users/login'

  post 'users/login' => 'users#check'
  delete 'users/login' => 'users#logout'
  get 'users/:user_name/edit' => 'users#edit' as: 'users/edit/sitting'
  get 'users/register'

  post 'users/register' => 'users#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
