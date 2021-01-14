Rails.application.routes.draw do
  root :to => "home#index"

  get 'home/index'
	
  resources :semesters do
  	resources :subjects
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :student_details do
  	resources :results
  end
  post 'student/redirect' => "student_details#redirect"
  get 'student/view_result' => "student_details#view_result"
end
