# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dnt/version'

Gem::Specification.new do |spec|
  spec.name          = "dnt"
  spec.version       = Dnt::VERSION
  spec.authors       = ["at-longhpv"]
  spec.email         = ["longhpv@asiantech.vn"]

  spec.summary       = "Require nokogiri gem"
  spec.description   = "Check TimeZone"
  spec.homepage      = "https://github.com/SFzxc/dateNtime"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "thor"
  spec.add_dependency "nokogiri"
end
