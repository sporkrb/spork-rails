require 'date'

Gem::Specification.new do |s|
  s.name = %q{spork-rails}
  s.version = "3.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tim Harper"]
  s.date = Date.today.to_s
  s.description = %q{Plugin for Spork to support Rails.}
  s.email = ["timcharper+spork@gmail.com"]
  s.executables = []
  s.extra_rdoc_files = [
    "MIT-LICENSE",
     "README.rdoc"
  ]
  s.files = ["Gemfile", "README.rdoc", "MIT-LICENSE"] + Dir["lib/**/*"] + Dir["features/**/*"] + Dir["spec/**/*"]
  s.homepage = %q{http://github.com/sporkrb/spork-rails}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{spork}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{spork}
  s.test_files = Dir["features/**/*"] + Dir["spec/**/*"]

  s.add_dependency "spork", ">= 1.0.0rc0"
  s.add_dependency "rails", ">= 3.0.0", "< 3.3.0"
end
