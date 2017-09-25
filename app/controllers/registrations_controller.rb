class RegistrationsController < ApplicationController
  respond_to :json

  def create
    user = User.new(email: "jamesemails@dbdb.com", password: "123456789", password_confirmation: "123456789")
    render json: user
  end

end
