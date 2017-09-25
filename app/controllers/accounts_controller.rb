class AccountsController < ApplicationController
  before_action :authenticate_request!

    def index
     @accounts = current_user.accounts
     render( { json: @accounts } )
    end
 end
