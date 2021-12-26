Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'home#index'

  # регистрация
  post '/users', to: 'users#create'

  # авторизация
  get '/auth', to: 'auth#index'
  post '/auth', to: 'auth#create'
  delete '/auth', to: 'auth#destroy'

  get '/main', to: 'main#index'

  # анекдоты (пользователь)
  get '/main/anecdotes', to: 'anecdotes#index'
  get '/main/anecdotes/top',  to: 'anecdotes#top'
  post '/main/anecdotes/anecdote:id/like', to: 'anecdotes#create_like'
  post '/main/anecdotes/anecdote:id/dislike', to: 'anecdotes#create_dislike'
  post '/main/anecdotes/anecdote:id/favourite', to: 'anecdotes#add_to_favourite'
  delete '/main/anecdotes/anecdote:id/like', to: 'anecdotes#destroy_like'
  delete '/main/anecdotes/anecdote:id/dislike', to: 'anecdotes#destroy_dislike'
  delete '/main/anecdotes/anecdote:id', to: 'anecdotes#destroy_from_favourite'
  get '/favourite', to: 'anecdotes#favourite'
  get '/main', to: 'anecdotes#main'

  # анекдоты (администратор)
  get '/anecdotes/new', to: 'anecdotes#new'
  post '/anecdotes', to: 'anecdotes#create'
  delete '/anecdotes/anecdote:id', to: 'anecdotes#destroy'

end
