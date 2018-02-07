Rails.application.routes.draw do
  get '/fridges', to: 'fridges#index'
  get '/fridges/new', to: 'fridges#new'
  post '/fridges', to: 'fridges#create'
  get '/fridges/:id', to: 'fridges#show'
  get '/fridges/:id/delete', to: 'fridges#destroy'
  # delete '/fridges/:id', to 'fridges#delete'
end