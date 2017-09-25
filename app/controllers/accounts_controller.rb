class AccountsController < ApplicationController
  before_action :authenticate_request!

    def index
     render json: {return: "hello"}
    end
 end
