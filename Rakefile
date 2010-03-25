require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "app_constants"
    gemspec.version = "0.1.0"
    gemspec.summary = "A clean and simple way to manage your application's per-environment constants"
    gemspec.description = "AppConstants is a very simple plugin that provides a clean way to handle this need."
    gemspec.email = "leonardoborges.rj@gmail.com"
    gemspec.homepage = "http://github.com/kriss/app_constants"
    gemspec.authors = ["Kris Kowalik", "Leonardo Borges"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the app_constants plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the app_constants plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'AppConstants'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
