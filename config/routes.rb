 # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html




Rails.application.routes.draw do
  root to:"main#index"

  get "addmon", to:"monster#addmon"
  get "browsemon", to:"monster#browsemon"
  get "delmon", to:"monster#delmon"
  get "definition", to:"monster#definition"




  resources :authors, only: [:new, :create], path_names: {new: 'addauth'}
  resources :authors, only: [:edit, :update], path_names: {new: 'editauth'}
  resources :authors, only: [:delete], path_names: {new: 'delauth'}
  get "browseauth", to:"authors#browseauth"
  get "delauth", to:"authors#delauth"
  get "addauth", to: "authors#new"  
  get "editauth", to: "authors#edit"  
  post "editauth", to: "authors#edit"  
  post "delauth", to: "authors#delete"
  post "browseauth", to: "author#browseauth"  

  get "addbook", to:"book#addbook"
  get "browsebook", to:"book#browsebook"
  get "delbook", to:"book#delbook"


end
