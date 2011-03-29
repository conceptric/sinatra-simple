require 'rubygems'
require 'bundler'
Bundler.setup(:default, ENV['RACK_ENV'].to_sym)
require 'sinatra/base'
require 'haml'
require 'sass'

class BaseApplication < Sinatra::Base
  
  configure do
    set :environment, (ENV['RACK_ENV'] ? ENV['RACK_ENV'].to_sym : :development)
    set :app_file, __FILE__
    enable :static
    set :public, File.dirname( __FILE__ ) + '/public'
    set :config, File.dirname( __FILE__ ) + '/config'
  end
  
  configure :production do
    set :run, false
    FileUtils.mkdir_p 'log' unless File.exists?('log')
    log = File.new("log/sinatra.log", "a")
    $stdout.reopen(log)
    $stderr.reopen(log)
  end
  
  configure :test do
    require 'rspec'
    set :fixtures, File.expand_path(File.join(root, *%w[spec fixtures]))
  end

  # Application models and libraries
  require File.join(root, 'models')

  # Add some new routes 
  get '/' do
    @title = "A New Application"
    haml :index
  end
end
