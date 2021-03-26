class SessionsController < ApplicationController

    get '/login' do
        redirect_if_logged_in
        erb :"/sessions/new"
    end

    post '/login' do
        user = User.find_by(username: params["user"]["username"])

        if user && user.authenticate(params["user"]["password"])
            session["user_id"] = user.id
            redirect "/wrestlers"
        else
            redirect "/login"
        end
    end

    get '/logout' do
        session.clear
        redirect "/login"
    end
end