# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rapid_api/version'

Gem::Specification.new do |gem|
  gem.name          = 'rapid_api'
  gem.version       = RapidApi::VERSION
  gem.authors       = ['briandavidwetzel']
  gem.email         = ['briandavidwetzel@gmail.com']
  gem.summary       = %q{A framework for rapid development of Rails APIs.}
  gem.homepage      = ''
  gem.license       = 'MIT'

  gem.files         = Dir['README.md', 'LICENSE', 'lib/**/*', 'test/**/*']
  gem.test_files    = Dir['test/**/*']
  gem.require_paths = ['lib']

  gem.add_runtime_dependency     'actionpack', '~> 6.0'
  gem.add_runtime_dependency     'jwt',        '~> 1.5'

  gem.add_development_dependency 'bundler',                  '~> 2.1'
  gem.add_development_dependency 'rails',                    '~> 6.0'
  gem.add_development_dependency 'rake',                     '~> 10.0'
  gem.add_development_dependency 'active_model_serializers', '~> 0.10.0'
end
