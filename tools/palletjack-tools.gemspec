#-*- ruby -*-
# coding: utf-8
lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'palletjack/version'

Gem::Specification.new do |spec|
  spec.name	= 'palletjack-tools'
  spec.version	= PalletJack::VERSION
  spec.authors	= ['Karl-Johan Karlsson']
  spec.email	= ['karl-johan.karlsson@saabgroup.com']
  spec.summary	= 'Tools for the Pallet Jack Lightweight Configuration Management Database'
  spec.description	= spec.summary
  spec.homepage    = 'https://github.com/saab-simc-admin/palletjack'
  spec.license	= 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }

  spec.platform	= Gem::Platform::RUBY
  spec.required_ruby_version = '~>2'

  spec.add_runtime_dependency 'palletjack', PalletJack::VERSION
  spec.add_runtime_dependency 'dns-zone', '~> 0.3'
  spec.add_runtime_dependency 'ruby-ip', '~> 0.9'

  spec.add_development_dependency "bundler", "~> 1.7.8"
  spec.add_development_dependency "rake", "~> 0.9.6"
  spec.add_development_dependency "rspec", "~> 2.14.1"

  spec.has_rdoc	= true
end