class JsonWebToken
 class << self
   def encode(payload, exp = 24.hours.from_now)
     payload[:exp] = exp.to_i
     # JWT.encode(payload, Rails.application.secrets.secret_key_base)
     JWT.encode(payload, ENV['SECRET_KEY_BASE'])

   end

   def decode(token)
     # body = JWT.decode(token, Rails.application.secrets.secret_key_base)[0]
     body = JWT.decode(token, ENV['SECRET_KEY_BASE'])[0]
     HashWithIndifferentAccess.new body
   rescue
     nil
   end
 end
end