# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'huxtable/version'

Gem::Specification.new do |spec|
  spec.name          = "huxtable"
  spec.version       = Huxtable::VERSION
  spec.authors       = ["Brightbit"]
  spec.email         = ["hello@brightbit.com"]
  spec.description   = %q{Brightbit's styleguide and front-end jetpack to get new projects started fast.}
  spec.summary       = %q{Brightbit's styleguide}
  spec.homepage      = "http://brightbit.com"
  spec.license       = "MIT-LICENSE"

  spec.files         = Dir["{app,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", "~> 4.0"
  spec.add_dependency "sass-rails"
  spec.add_dependency "bourbon"

  spec.add_development_dependency "bundler", "~> 1.4"
  spec.add_development_dependency "rake"
end

