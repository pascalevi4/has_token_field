# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'has_token_field/version'

Gem::Specification.new do |spec|
  spec.name          = "has_token_field"
  spec.version       = HasTokenField::VERSION
  spec.authors       = ["pascalevi4"]
  spec.email         = ["vadim.alekseev777@gmail.com"]
  spec.description   = "Extend ActiveRecord models to generate uniq secure tokens before saving"
  spec.summary       = "Generate token for ActiveRecord model"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "sqlite3"

  spec.add_dependency "activerecord"
end
