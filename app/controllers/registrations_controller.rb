class RegistrationsController < ApplicationController

  def create
    if(User.exists?(email: params[:email]))
      render json: {response: "user exists"}
    else
      user = User.create({
        first_name: params[:first_name],
        last_name: params[:last_name],
        email: params[:email],
        password: params[:password]})
      render json: token_hash(user)
    end
  end

end
