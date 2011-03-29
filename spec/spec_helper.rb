ENV['RACK_ENV'] = 'test'
require File.join(File.dirname(__FILE__), *%w[.. application.rb])

module MyHelpers
  def app
    run BaseApplication
  end
end
 
RSpec.configure do |config|
  config.include MyHelpers
end
