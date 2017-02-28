Rails.application.routes.draw do

  get '/posts' => 'posts#show'
  get '/users' => 'users#show_user'
  post '/users' => 'users#create'
  get '/posts/:id' => 'posts#show_id'
  get '/posts/:id/comments' => 'posts#show_comments'
  get '/users/:id/posts' => 'users#show_posts'
  delete '/posts/:id' => 'posts#delete'

end
