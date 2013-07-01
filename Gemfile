source 'https://rubygems.org'
gemspec
# rails is required by the gemspec

gem 'cucumber', '~> 1.0.0'
gem 'rspec', '~> 2.8'
gem 'rake'
gem 'spork', :github => 'sporkrb/spork', :branch => 'modernize-wip'
gem "spork-rails", :path => "./"

if RUBY_VERSION =~ /^2\.0|^1\.9/
  gem 'debugger'
else
  gem 'ruby-debug'
end
