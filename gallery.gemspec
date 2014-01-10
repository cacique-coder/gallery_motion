# -*- encoding: utf-8 -*-
VERSION = "1.0"

Gem::Specification.new do |spec|
  spec.name          = "gallery"
  spec.version       = VERSION
  spec.authors       = ["daniel"]
  spec.email         = ["xzdasx@gmail.com"]
  spec.description   = %q{easy implementation for a scrollable gallery in rubymotion}
  spec.summary       = %q{}
  spec.homepage      = ""
  spec.license       = ""

  files = []
  files << 'README.md'
  files.concat(Dir.glob('lib/**/*.rb'))
  spec.files         = files
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
end
