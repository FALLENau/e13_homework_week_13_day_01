class SessionsController < ApplicationController
  respond_to :json

  def create
    user = User.find_for_database_authentication(email: params[:email])
    if user.valid_password?(params[:password])
      render json: tokenHash(user)
    else
      render json: {errors: ['Invalid Username/Password']}, status: :unauthorized
    end
  end

  def destroy

  end

  def new

  end

  private
  def tokenHash(user)
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
