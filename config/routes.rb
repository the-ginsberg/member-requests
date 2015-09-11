Rails.application.routes.draw do
  
  get  '/'           => 'home#index', as: :home  
  get  '/show'       => 'users#show'
  get  'signup'      => 'users#new'
  get  '/login'      => "sessions#new"
  post '/login'      => "sessions#create"
  get  '/logout'     => "sessions#destroy"
  get  '/post'       => 'gprequests#new'
  post '/post'       => 'gprequests#create'
  get  '/show_req'   => 'gprequests#show'
  get  '/list_req'   => 'gprequests#index'
  get  '/rank_req'   => 'gprequests#rank'
  get  '/user_vote'  => 'gprequests#user_vote'
  post '/user_vote'  => 'gprequests#user_vote'

  resources :users
  resources :gprequests do
    member do
      post "vote"
    end
  end
    
end
