 # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html




Rails.application.routes.draw do
  root to:"main#index"





  resources :authors, only: [:new, :create], path_names: {new: 'addauth'}
  resources :authors, only: [:edit, :update], path_names: {new: 'editauth'}
  resources :authors, only: [:destroy], path_names: {new: 'delauth'}
  get "browseauth", to:"authors#index"
  get "delauth", to:"authors#destroy"
  get "addauth", to: "authors#new"  
  get "editauth", to: "authors#edit"  
  post "editauth", to: "authors#edit"  
  post "delauth", to: "authors#destroy"
  post "browseauth", to: "author#index"  

  resources :books, only: [:new, :create], path_names: {new: 'addbook'}
  resources :books, only: [:edit, :update], path_names: {new: 'editbook'}
  resources :books, only: [:destroy], path_names: {new: 'delbook'}
  get "browsebook", to:"books#index"
  get "delbook", to:"books#destroy"
  get "addbook", to: "books#new"  
  get "editbook", to: "books#edit"  
  get "books", to: "books#index"  
  post "editbook", to: "books#edit"  
  post "delbook", to: "books#destroy"
  post "browsebook", to: "books#index"  


  resources :monsters, only: [:new, :create], path_names: {new: 'addmon'}
  resources :monsters, only: [:edit, :update], path_names: {new: 'editmon'}
  resources :monsters, only: [:destroy], path_names: {new: 'delmon'}
  get "browsemon", to:"monsters#index"
  get "delmon", to:"monsters#destroy"
  get "addmon", to: "monsters#new"  
  get "editmon", to: "monsters#edit"  
  get "monsters", to: "monsters#index"  
  post "editmon", to: "monsters#edit"  
  post "delmon", to: "monsters#destroy"
  post "browsemon", to: "monsters#index"  
  get "definition", to:"monsters#definition"


end
