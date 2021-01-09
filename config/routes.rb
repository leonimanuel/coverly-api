Rails.application.routes.draw do
  resources :users do
		resources :cover_letters
		get "term_search/:search_term" => "cover_letters#search"
	end
  
  resources :positions 

	get "companies/:company_string" => "companies#search"
	get "positions/:position_string" => "positions#search"

	get "/" => "application#test"

	post 'authenticate', to: 'authentication#authenticate'

	# post "subscriptions/create-checkout-session" => "subscriptions#create"
	get "subscriptions/create-checkout-session" => "subscriptions#checkout"
	post "subscriptions/create-customer" => "subscriptions#create_customer"
	post "subscriptions/create-subscription" => "subscriptions#create_subscription"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
