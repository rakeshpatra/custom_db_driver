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
  s.summary     = "A solution for association across dbs"
  s.description = "This gem solves a common problem when you try to write basic associations across multiple ORMs."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "activerecord", "~> 4.2.3"

  s.add_dependency "mysql2", "~> 0.3.20"
  s.add_dependency "mongoid", "~> 5.1.0"
end
