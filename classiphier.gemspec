lib = File.expand_path('lib', __dir__)
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

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.homepage}/blob/master/LICENSE.txt"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'minitest', '~> 5.0'

  spec.add_dependency 'fast-stemmer', '~> 1.0'
end
