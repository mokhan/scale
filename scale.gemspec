# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scale/version'

Gem::Specification.new do |spec|
  spec.name          = "scale"
  spec.version       = Scale::VERSION
  spec.authors       = ["mo khan"]
  spec.email         = ["mo@mokhan.ca"]

  spec.summary       = %q{A simple DSL for producing SVG images.}
  spec.description   = %q{A simple DSL for producing SVG images.}
  spec.homepage      = "http://www.mokhan.ca/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri", "~> 1.6.6"
  spec.add_dependency "virtus", "~> 1.0"
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2"
end
