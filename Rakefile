begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

require 'rdoc/task'

RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'StashDatacite'
  rdoc.options << '--line-numbers'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

APP_RAKEFILE = File.expand_path('../spec/dummy/Rakefile', __FILE__)
load 'rails/tasks/engine.rake'
load 'rails/tasks/statistics.rake'
Bundler::GemHelper.install_tasks

# ------------------------------------------------------------
require 'rspec/core'
require 'rspec/core/rake_task'
# RSpec
desc "Run all specs in spec directory"
RSpec::Core::RakeTask.new(:spec => 'app:db:test:prepare')

task :default => :spec
