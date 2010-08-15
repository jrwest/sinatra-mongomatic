require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "sinatra-mongomatic"
    gem.summary = %Q{Sinatra extension for Mongomatic}
    gem.description = %Q{Easily include Mongomatic in your Sinatra applications}
    gem.email = "jordanrw@gmail.com"
    gem.homepage = "http://mongomatic.com/"
    gem.authors = ["Jordan West"]
    gem.files = ["lib/**/*.rb"]
    gem.add_dependency "mongomatic", ">= 0.3.0"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end