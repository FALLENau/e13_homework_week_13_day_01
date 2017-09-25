class RegistrationsController < ApplicationController
  respond_to :json

  def create
    if(User.exists?(email: params[:email]))
      render json: {respons: "user exists"}
    else
      user = User.create({email: params[:email], password: params[:password]})
      render json: user
    end
  end

end
