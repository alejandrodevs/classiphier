# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'classiphier/version'

Gem::Specification.new do |spec|
  spec.name          = 'classiphier'
  spec.version       = Classiphier::VERSION
  spec.authors       = ['Alejandro Gutiérrez']
  spec.email         = ['alejandrodevs@gmail.com']

  spec.summary       = "Classifier module using Bayesian's theorem."
  spec.description   = "Classifier module using Bayesian's theorem."
  spec.homepage      = 'https://github.com/alejandrodevs/classiphier'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_dependency 'fast-stemmer', '~> 1.0'

  spec.add_development_dependency 'rake', '~> 11.1'
  spec.add_development_dependency 'minitest', '~> 5.8'
end
