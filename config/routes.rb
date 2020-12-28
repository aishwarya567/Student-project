Rails.application.routes.draw do
  get 'semesters/index' => 'semesters#index'
get 'semesters/new' => 'semesters#new'
get 'semesters/create' => 'semesters#create'
get 'semesters/index' => 'semesters#index'
get 'semesters/show' => 'semesters#show'

resources :semesters

get 'students/index' => 'students#index'
get 'students/new' => 'students#new'
get 'students/create' => 'students#create'
get 'students/index' => 'students#index'
get 'students/show' => 'students#show'
post 'students/edit' => 'students#edit'
patch 'students/update' => 'students#update'
get 'students/destroy' => 'students#destroy'
 resources :students
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
