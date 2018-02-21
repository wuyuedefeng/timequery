$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "timequery/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "timequery"
  s.version     = Timequery::VERSION
  s.authors     = ["mars"]
  s.email       = ["578595193@qq.com"]
  s.homepage    = "https://github.com/wuyuedefeng/timequery"
  s.summary     = "time model range query."
  s.description = "time model range query."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"

  s.add_development_dependency "sqlite3"
end
