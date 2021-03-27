class UsersController < ApplicationController

    get '/signup' do
        redirect_if_logged_in
        erb :"users/new"
    end

    post '/signup' do
        redirect_if_logged_in
        user = User.new(params["user"])

        if user.save
            session["user_id"] = user.id 
            redirect "/wrestlers"
        else
            flash[:error] = "#{user.errors.full_messages.join(" | ")}"
            redirect "/signup"
        end
    end

end