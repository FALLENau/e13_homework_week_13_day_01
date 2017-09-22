class AccountsController < ApplicationController
  before_action :authenticate_user!

    def index
     @accounts = current_user.accounts
     render( { json: @accounts } )
    end
 end
