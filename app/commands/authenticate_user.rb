class AuthenticateUser
  prepend SimpleCommand

  def initialize(email, password, auth_code = nil)
    @email = email
    @password = password
    @auth_code = auth_code
  end

  def call
    JsonWebToken.encode(user_id: user.id) if user
  end

  private

  attr_accessor :email, :password, :auth_code

  def user
    # binding.pry
    if auth_code
      user = User.find_by(auth_code: auth_code)
      return user
    else
      user = User.find_by_email(email)      
      return user if user && user.authenticate(password)
    end



    errors.add :user_authentication, 'invalid credentials'
    nil
  end
end