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

	# get "linkedin-login", to: redirect("auth/linkedin")
	get "linkedin-login", to: 'sessions#test'
	# get "linkedin-login", to: redirect(`https://www.linkedin.com/oauth/v2/authorization?response_type=code&client_id=77cinu2cc8o64l&redirect_uri=http%3A%2F%2Flocalhost%253A3000%2Fauth%2Flinkedin%2Fcallback&state=fooobar&scope=r_liteprofile%20r_emailaddress%20w_member_social`)

	get 'auth/linkedin/callback', to: 'sessions#create'
	# get 'auth/linkedin/callback', to: 'sessions#redirect_boi'
	# get 'auth/linkedin/callback', to: redirect("http://localhost:3001/auth")
	# get 'auth/linkedin/callback', to: redirect("https://stackoverflow.com/questions/42914666/react-router-external-link")

	# get "get-auth-info" => 'sessions#test'

	# post "subscriptions/create-checkout-session" => "subscriptions#create"
	get "subscriptions/create-checkout-session" => "subscriptions#checkout"
	post "subscriptions/create-customer" => "subscriptions#create_customer"
	post "subscriptions/create-subscription" => "subscriptions#create_subscription"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
