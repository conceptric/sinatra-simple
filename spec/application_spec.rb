require File.dirname(__FILE__) + '/spec_helper'

describe BaseApplication, " configuration specs" do
  it "should run specs in the test environment" do
    ENV['RACK_ENV'].should eql('test')
  end
  
  it "should have a test fixtures directory" do
    BaseApplication::fixtures.should_not be_empty
    BaseApplication::fixtures.should eql("#{File.expand_path(File.join(File.dirname(__FILE__), *%w[fixtures]))}")
  end
  
  it "should have a path to the application root directory set" do
    BaseApplication::root.should_not be_empty
    BaseApplication::root.should eql("#{File.expand_path(File.join(File.dirname(__FILE__), *%w[..]))}")
  end
end
