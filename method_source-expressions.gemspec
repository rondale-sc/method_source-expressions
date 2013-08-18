# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'method_source-expressions/version'

Gem::Specification.new do |gem|
  gem.name          = "method_source-expressions"
  gem.version       = MethodSource::Expressions::VERSION
  gem.authors       = ["Jonathan Jackson"]
  gem.email         = ["dev@hashrocket.com"]
  gem.description   = %q{Expression parsing addition to the method_source gem}
  gem.summary       = %q{Expression parsing addition to the method_source gem}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "method_source"
end
