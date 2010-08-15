$: << File.join(File.dirname(__FILE__), %w/.. lib/)
require 'sinatra'
require 'sinatra/mongomatic'

mongomatic nil

class User < Mongomatic::Base
  
end

get '/create/:name' do
  User.new(:name => params[:name]).insert
  "ok"
end

get '/all' do
  User.find.inject("") do |list, user|
    list += "#{user[:name]}<br>"
  end
end


