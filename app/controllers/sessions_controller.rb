require 'net/http'
require 'httparty'
require 'securerandom'

class SessionsController < ApplicationController
	skip_before_action :authenticate_request

	def redirect_boi
		redirect_to "https://api.rubyonrails.org/v4.1.0/classes/ActionController/Redirecting.html"
		# render json: {url: "https://api.rubyonrails.org/v4.1.0/classes/ActionController/Redirecting.html"}
	end

	def create
		# binding.pry

		code = params["code"]
		uri = URI("https://www.linkedin.com/oauth/v2/accessToken")
		res = Net::HTTP.post_form(uri, 
		"grant_type" => "authorization_code",
		"code" => code,
		"redirect_uri" => "http://localhost:3000/auth/linkedin/callback",
		"client_id" => ENV['LINKEDIN_KEY'],
		"client_secret" => ENV['LINKEDIN_SECRET']
		)

		token = JSON.parse(res.body)["access_token"]
		# token = "AQV2gW1DYMp7NEhdun_PJ8Js_dd2LaDD0TGm6pcAzxepdotdhRHP1zncXEhPe1F4vCvXKcsDowV9TwHYiz0ZIxO36X4IdtFAWQYprWDiay74p5CXb2RhLgxBfsJ988ahelKjfysIDxXoSmFwx-UmoavFLu4SpJhDexiWQPciWp2CCnsAwXOC7SoTU9oybmbcY3JwYMhiAV7REsqZ98nh1y6uexlyodh8yaIkmBvyeM_6fFdvRlBEq6QPscSsyMw8qy0C-224WELZ1gVqkqCPfM3ApCRKe74fwgi3nF-Gv_UUE2NESfJe1bCYc9WATlgyU_ElrLEYhhs5Fmoy3GSBA1xNiN7-4g"

		# url = 'https://api.linkedin.com/v2/me'
		url = 'https://api.linkedin.com/v2/emailAddress?q=members&projection=(elements*(handle~))'
		headers = {
		  Authorization: "Bearer #{token}",
		}
		response = HTTParty.get(url, headers: headers)
		email = response["elements"][0]["handle~"]["emailAddress"]

		random_string = SecureRandom.urlsafe_base64

		user = User.find_by(email: email)
		user.update(auth_code: random_string)

		redirect_to "http://localhost:3001/auth?rando=#{random_string}"		
	end

	def test
		redirect_to "https://www.linkedin.com/oauth/v2/authorization?response_type=code&client_id=77cinu2cc8o64l&redirect_uri=http://localhost:3000/auth/linkedin/callback&state=fooobar&scope=r_liteprofile%20r_emailaddress"
	end
end