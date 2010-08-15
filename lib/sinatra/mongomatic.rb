require 'mongomatic'
require 'sinatra/base'

module Sinatra
  module Mongomatic
    def mongomatic(connection = nil)
      ::Mongomatic.db = connection || Mongo::Connection.new.db("test")
    end
  end
  
  register Sinatra::Mongomatic
end