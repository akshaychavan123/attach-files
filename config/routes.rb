Rails.application.routes.draw do
  get 'students/index'
  get 'students/new'
 
  get 'students/show'
  resources :students
  root "students#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
