$: << File.join(File.dirname(__FILE__), %w/.. lib/)
require 'sinatra/base'
require 'sinatra/mongomatic'

class User < Mongomatic::Base
end

class MongomaticExample < Sinatra::Base
  register Sinatra::Mongomatic
  
  mongomatic nil
  
  get '/create/:name' do
    User.new(:name => params[:name]).insert
    "ok"
  end

  get '/all' do
    User.find.inject("") do |list, user|
      list += "#{user[:name]}<br>"
    end
  end
  run! if $0 == __FILE__
end
