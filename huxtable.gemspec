# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'huxtable/ui/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "huxtable"
  spec.version       = Huxtable::Ui::Rails::VERSION
  spec.authors       = ["Brightbit"]
  spec.email         = ["hello@brightbit.com"]
  spec.description   = %q{UI is the vocabulary of the web}
  spec.summary       = %q{For Brightbit}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "sass-rails"
  spec.add_dependency "bourbon"
  spec.add_dependency "autoprefixer-rails"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "binding_of_caller"
  spec.add_development_dependency "git"
end
