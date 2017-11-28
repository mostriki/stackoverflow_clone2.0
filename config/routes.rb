Rails.application.routes.draw do
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  resources :questions do
    resources :responses
    resources :comments
  end

  resources :responses do
    resources :comments
  end
end
