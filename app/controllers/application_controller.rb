require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    # MK CHANGES START
    enable :sessions
		set :session_secret, "password_security"
		# MK CHANGES END
  end
  
  get '/' do 
    erb :index
  end

end
