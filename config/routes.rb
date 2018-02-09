Rails.application.routes.draw do
  get '/fridges', to: 'fridges#index'
  get '/fridges/new', to: 'fridges#new'
  post '/fridges', to: 'fridges#create'
  get '/fridges/:id', to: 'fridges#show'
  get '/fridges/:id/delete', to: 'fridges#destroy'
  get '/fridges/:id/edit', to: 'fridges#edit'
  patch '/fridges/:id/edit', to: 'fridges#update'
  get '/fridges/:fridge_id/foods', to: 'foods#index'
  get '/fridges/:fridge_id/foods/new', to: 'foods#new'
  get '/fridges/:fridge_id/foods/:id', to: 'foods#show'
  post '/fridges/:fridge_id/foods', to: 'foods#create'
  get '/fridges/:fridge_id/foods/:id/delete', to: 'foods#destroy'
  # resources :fridges do
  #   resources :foods
  #   resources :drinks
  # end
end