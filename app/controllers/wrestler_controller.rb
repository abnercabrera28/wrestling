class WrestlersController < ApplicationController

    get '/wrestlers' do
        redirect_if_not_logged_in

        @wrestlers = current_user.wrestlers
        erb :"/wrestlers/index"
    end

    get '/wrestlers/new' do
        redirect_if_not_logged_in
        erb :"/wrestlers/new"
    end

    post '/wrestlers' do
        redirect_if_not_logged_in

        wrestler = current_user.wrestlers.build(params[:wrestler])

        if wrestler.save
            redirect "/wrestlers/#{wrestler.id}"
        else
            "error dog"
        end
    end

    get '/wrestlers/:id' do

    end

    get '/wrestlers/:id/edit' do

    end

    patch '/wrestlers/:id' do

    end

    delete '/wrestlers/:id' do

    end

end