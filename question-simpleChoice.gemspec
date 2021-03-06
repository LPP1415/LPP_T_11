# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'question/simpleChoice/version'

Gem::Specification.new do |spec|
  spec.name          = "question-simpleChoice"
  spec.version       = Question::SimpleChoice::VERSION
  spec.authors       = ["Eduardo"]
  spec.email         = ["edudioniz@gmail.com"]
  spec.description   = %q{creador de examenes}
  spec.summary       = %q{creador de examenes}
  spec.homepage      = "http://www.creaexamen.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"

end
