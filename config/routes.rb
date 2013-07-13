Foodstagram::Application.routes.draw do
  get '/' => 'photos#search', as: 'photo_search'
  # root :to => 'welcome#index'
  get '/photos' => 'photos#results', as: 'photo_result'
end
