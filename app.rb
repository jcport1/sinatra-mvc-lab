require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base


    get "/" do

        erb :user_input 

    end

    post "/piglatinize" do

        @text = params[:words]
        @pig_latin = PigLatinizer.new(text_from_user)

        erb :piglatinize

    end 

end