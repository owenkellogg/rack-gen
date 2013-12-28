# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "rack-gen"
  spec.version       = "0.3.0"
  spec.authors       = ["Steven Zeiler"]
  spec.email         = ["zeiler.steven@gmail.com"]
  spec.description   = %q{A gem to generate the most basic static web server}
  spec.summary       = %q{A basic rack server app generator}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib/templates"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.executables << 'rack'
end
