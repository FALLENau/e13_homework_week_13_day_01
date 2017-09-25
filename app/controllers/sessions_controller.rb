class SessionsController < ApplicationController
  respond_to :json

  def create
    user = User.where(email: params[:email]).first

    if user&.valid_password?(params[:password])
      render json: user.as_json(only: [:id, :email, :authentication_token]), status: :created
    else###TODO: remove [:id] from 6 when api to react works.
      head(:unauthorized)
    end
  end

  def destroy

  end
end
