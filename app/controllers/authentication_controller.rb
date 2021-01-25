class AuthenticationController < ApplicationController
 skip_before_action :authenticate_request

 def authenticate
 	 puts "\n \n"
 	 puts params
 	 puts "\n\n" 
   
   # binding.pry
   command = AuthenticateUser.call(params[:email], params[:password], params[:code])

   if command.success?
     render json: { auth_token: command.result }
   else
     render json: { error: command.errors }, status: :unauthorized
   end
 end
end