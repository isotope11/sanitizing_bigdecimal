# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sanitizing_bigdecimal'

Gem::Specification.new do |spec|
  spec.name          = "sanitizing_bigdecimal"
  spec.version       = SanitizingBigDecimal::VERSION
  spec.authors       = ["Josh Adams"]
  spec.email         = ["josh@isotope11.com"]
  spec.description   = %q{Provides a nice way to get BigDecimals from user input without bugs.}
  spec.summary       = %q{This gem aims to solve various common problems around converting user input into BigDecimal.}
  spec.homepage      = "http://github.com/isotope11/sanitizing_bigdecimal"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
