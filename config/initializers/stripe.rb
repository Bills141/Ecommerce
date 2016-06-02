Rails.configuration.stripe = {
	:publishable__key  => ENV['STRIPE_TEST_PUBLISHABLE_KEY'],
	:secret__key  => ENV['STRIPE_TEST_SECRET_KEY'],
    }

Stripe.api_key = Rails.configuration.stripe[:secret__key]
  
  #Stripe.api_key = ENV['STRIP_API_SECRET_KEY']