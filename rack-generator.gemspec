# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/generator/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-generator"
  spec.version       = Rack::Generator::VERSION
  spec.authors       = ["Steven Zeiler"]
  spec.email         = ["zeiler.steven@gmail.com"]
  spec.description   = %q{A gem to generate the most basic static}
  spec.summary       = %q{Write a gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.executables << 'rack'
end
