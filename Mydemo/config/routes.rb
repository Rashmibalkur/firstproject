Rails.application.routes.draw do
  	resources :companies
 	root "companies#index"  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 	# resources :todos

 	get "/todos" => "todos#index"
 	get "/todos/new" => "todos#new"
 	post "/todos" => "todos#create"
end
