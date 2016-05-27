$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "custom_db_driver/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "custom_db_driver"
  s.version     = CustomDbDriver::VERSION
  s.authors     = ["rakeshpatra"]
  s.email       = ["rakesh.patra@mindfiresolutions.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of CustomDbDriver."
  s.description = "TODO: Description of CustomDbDriver."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"

  # s.add_development_dependency "sqlite3"
end
