Rails.application.routes.draw do

  resources :exercise_sets
  root to: 'pages#main'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
