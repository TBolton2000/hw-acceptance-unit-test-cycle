Rottenpotatoes::Application.routes.draw do
  get 'same_director/show'

  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
end
