require 'rubygems'
require 'rake'
require 'rspec/core/rake_task' if ENV['RACK_ENV'] != 'production'
 
task :default => :spec
task :test => :spec

desc "Run all specs"
RSpec::Core::RakeTask.new('spec') do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rspec_opts = ['--backtrace']
end

task :restart do
  system("touch tmp/restart.txt")
end