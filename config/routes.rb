Rails.application.routes.draw do
  resources :users do
		resources :cover_letters
		get "term_search/:search_term" => "cover_letters#search"
	end
  
	get "companies/:company_string" => "companies#search"
	get "positions/:company_string" => "positions#search"

	get "/" => "application#test"

	post 'authenticate', to: 'authentication#authenticate'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
