class WrestlersController < ApplicationController

    get '/wrestlers' do
        @wrestlers = Wrestler.all
        erb :index
    end

    get '/wrestlers/new' do
        erb :new
    end

    post '/wrestlers' do

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