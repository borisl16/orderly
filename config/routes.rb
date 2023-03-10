Rails.application.routes.draw do
  
  
  resources :places do
      resources :storage_items, defaults: { place: nil, place_id: nil}
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "places#index"
  get '/places/new'

end
