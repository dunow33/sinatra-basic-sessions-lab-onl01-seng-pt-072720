require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions
        set :session_secret, "xj7mudW8aM9"
    end

    get '/' do
        erb :index
    end

    post '/checkout' do
        @item = params[:item]

        session[:item] = @item

        erb :checkout
    end
end