# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jquery-countdown-rails/version'

Gem::Specification.new do |spec|
  spec.name          = "jquery-countdown-rails"
  spec.version       = JqueryCountdownRails::VERSION
  spec.authors       = ["Mauricio Pasquier Juan"]
  spec.email         = ["mauricio@pasquierjuan.com.ar"]
  spec.description   = %Q{jQuery Countdown (gem version reflects assets
                          version) packaged for standalone sprockets or rails}
  spec.summary       = %q{jQuery Countdown for the asset pipeline}
  spec.homepage      = "https://github.com/mauriciopasquier/jquery-countdown-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
