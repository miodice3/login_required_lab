class SessionsController < ApplicationController

    def create
        return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
        session[:name] = params[:name]
        redirect_to controller: 'application', action: 'hello'
        # session[:name] = params[:name]
        #byebug
    end

    def destroy
        #byebug
        # if session[:name]
        #     session.delete :name
        # end
        session.delete :name
        #byebug
        redirect_to '/'
    end

end