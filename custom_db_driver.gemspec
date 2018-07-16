$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "custom_db_driver/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "custom_db_driver"
  s.version     = CustomDbDriver::VERSION
  s.authors     = ["rakeshpatra"]
  s.email       = ["rakesh.patra@mindfiresolutions.com"]
  s.homepage    = "https://github.com/rakeshpatra/custom_db_driver"
  s.summary     = "Summary of CustomDbDriver."
  s.description = "Description of CustomDbDriver."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.3"

  s.add_development_dependency "mysql2"
  s.add_development_dependency "mongoid"
end
