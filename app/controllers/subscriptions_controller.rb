class SubscriptionsController < ApplicationController
	skip_before_action :authenticate_request

	Stripe.api_key = 'sk_test_51I5aZ0DNz9cUktccGIsIsiGmUrFbglHp4x9Its67NJ2rKJPW6m4F60jNEF9QuoCBCpU4Nptt0ACM2cBn4UB2DyoW00M06bl8Fi'

	def checkout
		intent = Stripe::PaymentIntent.create({
		  amount: 1099,
		  currency: 'usd',
		  payment_method_types: ['card'],
		  # Verify your integration in this guide by including this parameter
		  metadata: {integration_check: 'accept_a_payment'},
		})

		# binding.pry
		render json: {client_secret: intent.client_secret}.to_json
	end

	def create_customer
		# binding.pry
		email = params["subscription"]["email"]
		customer = Stripe::Customer.create({
		  description: 'My First Test Customer (lets call her Sally)',
		  email: email
		})	

		binding.pry
		render json: customer
	end

	# def create
	#   content_type 'application/json'
	#   data = JSON.parse(request.body.read)

	#   # See https://stripe.com/docs/api/checkout/sessions/create
	#   # for additional parameters to pass.
	#   # {CHECKOUT_SESSION_ID} is a string literal; do not change it!
	#   # the actual Session ID is returned in the query parameter when your customer
	#   # is redirected to the success page.
	#   begin
	#     session = Stripe::Checkout::Session.create(
	#       success_url: 'https://example.com/success.html?session_id={CHECKOUT_SESSION_ID}',
	#       cancel_url: 'https://example.com/canceled.html',
	#       payment_method_types: ['card'],
	#       mode: 'subscription',
	#       line_items: [{
	#         # For metered billing, do not pass quantity
	#         quantity: 1,
	#         price: data['priceId'],
	#       }],
	#     )
	#   rescue => e
	#     halt 400,
	#         { 'Content-Type' => 'application/json' },
	#         { 'error': { message: e.error.message } }.to_json
	#   end

	#   {
	#     sessionId: session.id
	#   }.to_json		
	# end
end
