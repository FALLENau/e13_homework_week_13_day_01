class ApplicationController < ActionController::API

  protected

  def token_hash(user)
    if(user && user.id)
      return {
        auth_token: JsonWebToken.encode(user_id: user.id),
        user: {id: user.id, email: user.email, admin: false}
      }
    else
      return nil
    end
  end

end
