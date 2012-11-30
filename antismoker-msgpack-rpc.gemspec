# -*- encoding: utf-8 -*-
require File.expand_path('../lib/antismoker/tests/msgpack-rpc/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Yamashita Yuu"]
  gem.email         = ["yamashita@geishatokyo.com"]
  gem.description   = %q{An antismoker plugin for smoke testing msgpack-rpc services.}
  gem.summary       = %q{An antismoker plugin for smoke testing msgpack-rpc services.}
  gem.homepage      = "https://github.com/yyuu/antismoker-msgpack-rpc"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "antismoker-msgpack-rpc"
  gem.require_paths = ["lib"]
  gem.version       = AntiSmoker::MsgpackRpcModule::VERSION

  gem.add_dependency("antismoker")
  gem.add_dependency("msgpack-rpc")
end
