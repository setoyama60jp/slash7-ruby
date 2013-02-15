# -*- encoding: utf-8 -*-
require File.expand_path('../lib/slash7/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors = ["KAWACHI Takashi"]
  gem.email = ["kawachi@p-lucky.net"]
  gem.description = %q{SLASH-7 client library}
  gem.summary = %q{SLASH-7 client library for Ruby}
  gem.homepage = ""

  gem.files = `git ls-files`.split($\)
  gem.executables = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files = gem.files.grep(%r{^(test|spec|features)/})
  gem.name = "slash7"
  gem.require_paths = ["lib"]
  gem.version = Slash7::VERSION

  gem.add_development_dependency('rspec')
  gem.add_development_dependency('rake')
  gem.add_development_dependency('rr')
end
