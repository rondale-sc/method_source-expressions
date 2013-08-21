# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'method_source-expressions/version'

Gem::Specification.new do |gem|
  gem.name          = "method_source-expressions"
  gem.version       = MethodSource::Expressions::VERSION
  gem.authors       = ["Jonathan Jackson"]
  gem.email         = ["dev@hashrocket.com"]
  gem.description   = %q{Ruby doesn't like you arbitrarily deciding when to execute expressions.  Take control with this gem.  It's a simple way to mix in additional behavior into Proc that will allow you to make custom DSL's that will change how ruby deals with expressions.}
  gem.summary       = %q{Expression parsing addition to the method_source gem}
  gem.homepage      = "https://github.com/rondale-sc/method_source-expressions"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "method_source"
end
