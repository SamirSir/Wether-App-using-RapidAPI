Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'wether#index'
  get 'wether/search', as: "search" 
 
  get '/covid19/index'
  get '/covid19/country'

  # for search using select 2 required
  # get '/covid19/all_country'

end
