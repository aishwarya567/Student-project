Rails.application.routes.draw do
get 'students/index' => 'students#index'
get 'students/new' => 'students#new'
get 'students/create' => 'students#create'
get 'students/index' => 'students#index'
get 'students/show' => 'students#show'
post 'students/edit' => 'students#edit'
patch 'students/update' => 'students#update'
get 'students/delete' => 'students/delete'
 resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
