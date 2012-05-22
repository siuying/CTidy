# -*- encoding: utf-8 -*-
require File.expand_path('../lib/motion/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Francis Chong"]
  gem.email         = ["francis@ignition.hk"]
  gem.description   = "libtidy wrapper for rubymotion"
  gem.summary       = "libtidy wrapper for rubymotion"
  gem.homepage      = "https://github.com/siuying/hpple-motion"

  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "motion-hpple"
  gem.require_paths = ["motion"]
  gem.version       = Hpple::VERSION
end
