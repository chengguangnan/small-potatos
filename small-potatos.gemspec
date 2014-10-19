# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'small-potatos/version'

Gem::Specification.new do |gem|
  gem.name          = "small-potatos"
  gem.version       = Small::Potatos::VERSION
  
  gem.authors       = ["Cheng Guang-nan"]
  gem.email         = ["cheng@chengguangnan.com"]
  
  gem.summary       = %q{Small tools for the command line.}
  gem.homepage      = "https://github.com/chengguangnan/small-potatos"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'actionpack'
  gem.add_dependency 'hirb'
  gem.add_dependency 'redis'

end
