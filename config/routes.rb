Rails.application.routes.draw do
  devise_for :users,
             controllers: {
                 sessions: 'users/sessions',
                 registrations: 'users/registrations'
             }
  get '/member-data', to: 'members#show'
  get '/models', to: 'cars#index'
  get '/models_b', to: 'cars#custom_index'
  post '/ban', to: 'banneds#toggle'
  get '/list', to: 'cars#list'
  get '/reserved', to: 'reserved#index'
  post '/reserved', to: 'reserved#create'
  post '/reserved/delete', to: 'reserved#delete'
end