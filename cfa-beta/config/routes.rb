Rails.application.routes.draw do

  get 'stocks/pharmacy'

  get 'stocks/add_products'

  get 'stocks/update_product'

  get 'stocks/delet_product'

  get 'stocks/show_products'

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
