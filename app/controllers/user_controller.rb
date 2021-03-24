class UsersController < ApplicationController

    get '/signup' do
        redirect_if_logged_in
        erb :"users/new"
    end

    post '/signup' do

    end

end