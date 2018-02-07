Rails.application.routes.draw do
  # get '/fridges', to: 'fridges#index'
  # get '/fridges/new', to: 'fridges#new'
  # post '/fridges', to: 'fridges#create'
  # get '/fridges/:id', to: 'fridges#show'
  # get '/fridges/:id/delete', to: 'fridges#destroy'
  # get '/fridges/:id/edit', to: 'fridges#edit'
  # get '/fridges/:fridge_id/foods', to: 'foods#index'
  resources :fridges do
    resources :foods
    resources :drinks
  end
end