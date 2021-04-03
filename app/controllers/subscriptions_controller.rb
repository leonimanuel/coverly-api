class SubscriptionsController < ApplicationController
	skip_before_action :authenticate_request

	Stripe.api_key = ENV["STRIPE_API_KEY"]

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

	def create_subscription
	  # content_type 'application/json'
	  data = JSON.parse request.body.read

	  begin
	    Stripe::PaymentMethod.attach(
	      data['paymentMethodId'],
	      { customer: data['customerId'] }
	    )
	  rescue Stripe::CardError => e
	    halt 200,
	         { 'Content-Type' => 'application/json' },
	         { 'error': { message: e.error.message } }.to_json
	  end

	  # Set the default payment method on the customer
	  Stripe::Customer.update(
	    data['customerId'],
	    invoice_settings: { default_payment_method: data['paymentMethodId'] }
	  )

	  # Create the subscription
	  subscription =
	    Stripe::Subscription.create(
	      customer: data['customerId'],
	      items: [{ price: 'price_1I5avADNz9cUktccE0WvL6G1' }],
	      expand: %w[latest_invoice.payment_intent]
	    )

	  subscription.to_json
	  binding.pry
	  render json: subscription	
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
