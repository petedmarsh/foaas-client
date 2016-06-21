# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'foaas-client/version'

Gem::Specification.new do |spec|
  spec.name          = 'foaas-client'
  spec.version       = Foaas::VERSION
  spec.authors       = ['Peter Marsh']
  spec.email         = ['pete.d.marsh@gmail.com']
  spec.description   = %q{A client for FOAAS}
  spec.summary       = spec.description
  spec.homepage      = 'http://github.com/petedmarsh/foaas-client'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'rest-client', '~> 1.6', '>= 1.6.7'
  spec.add_dependency 'addressable', '~> 2.3', '>= 2.3.5'
  spec.add_development_dependency 'rspec', '~> 2.12', '>= 2.12.0'

  spec.add_development_dependency 'bundler', '~> 1.3', '>= 1.3.7'
  spec.add_development_dependency 'rake', '~> 10.1', '>= 10.1.0'
end
