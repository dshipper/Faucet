$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "faucet/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "faucet"
  s.version     = Faucet::VERSION
  s.authors     = ["Dan Shipper"]
  s.email       = ["dshipper@gmail.com"]
  s.homepage    = "http://www.danshipper.com"
  s.summary     = "Super easy Rails drip marketing"
  s.description = "Schedule emails to be sent at a later date from your Rails app."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
