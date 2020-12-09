class SecretsController < ApplicationController
    
   def show
    if !session[:name]
        redirect_to '/login'
    else

    end
   end

end