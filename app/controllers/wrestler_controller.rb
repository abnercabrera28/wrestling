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
        redirect_if_not_logged_in
        redirect_if_not_authorized
        erb :"/wrestlers/show"
    end

    get '/wrestlers/:id/edit' do
        redirect_if_not_logged_in
        redirect_if_not_authorized
        erb: "/wrestlers/edit"
    end

    patch '/wrestlers/:id' do
        redirect_if_not_logged_in
        redirect_if_not_authorized

        if @wrestler.update(params["wrestler"])
            redirect "/wrestlers/#{@wrestler.id}"
        else
            redirect "/wrestlers/#{@wrestler.id}/edit"
        end
    end

    delete '/wrestlers/:id' do

    end

    private

    def redirect_if_not_authorized
        @wrestler = Wrestler.find_by_id(params[:id])
        if @wrestler.user_id != session["user_id"]
            redirect "/wrestlers"
        end
    end

end