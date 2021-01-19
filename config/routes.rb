Rails.application.routes.draw do
  get 'exercise_sets/new'
  get 'exercise_sets/create'
  get 'exercise_sets/edit'
  get 'exercise_sets/destroy'
  get 'exercise_sets/update'
  root to: 'pages#main'
  post 'exercise_sets/create', to: 'exercise_sets#create'
  resources :exercise_sets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
