$: << File.join(File.dirname(__FILE__), %w/.. lib/)
require 'sinatra'
require 'sinatra/mongomatic'

class User < Mongomatic::Base
  
end

mongomatic Mongo::Connection.new.db("test2")

get '/create/:name' do
  User.new(:name => params[:name]).insert
  "ok"
end

get '/all' do
  User.find.inject("") do |list, user|
    list += "#{user[:name]}<br>"
  end
end


