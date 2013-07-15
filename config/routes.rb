Foodstagram::Application.routes.draw do
  get '/' => 'photos#home', as: 'photo_home'
  get '/photos' => 'photos#result', as: 'photo_result'
  get '/about' => 'photos#about', as: 'photo_about'
end
