# -*- encoding: utf-8 -*-
require File.expand_path('../lib/mecab-modern/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Oame"]
  gem.email         = ["oame@oameya.com"]
  gem.description   = %q{Modernize mecab-ruby.}
  gem.summary       = %q{Wrapper for mecab-ruby. Supporting UTF-8, Iterater, etc...}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "mecab-modern"
  gem.require_paths = ["lib"]
  gem.version       = Mecab::Modern::VERSION
end
