Rails.application.routes.draw do
    root :to => 'questions#index'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  resources :questions do
    resources :responses
    resources :question_comments
  end

  resources :responses do
    resources :response_comments
  end
end
