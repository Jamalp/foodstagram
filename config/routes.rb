Foodstagram::Application.routes.draw do
  devise_for :users
  resources :places
  root:to => 'photos#home', as: 'photo_home'
  get '/user/' => 'photos#index', as: 'photo_user'
  get '/photos' => 'photos#result', as: 'photo_result'
  get '/about' => 'photos#about', as: 'photo_about'
  post '/photos' => 'photos#save', :as => 'save_place'
  post '/photos' => 'photos#delete', :as => 'delete_place'
end
