# frozen_string_literal: true

require_relative 'lib/maps_and_tiles/version'

Gem::Specification.new do |spec|
  spec.name          = 'maps_and_tiles'
  spec.version       = MapsAndTiles::VERSION
  spec.authors       = ['Neil Slater']
  spec.email         = ['slobo777@gmail.com']

  spec.summary       = '.'
  spec.description   = '.'
  spec.homepage      = 'https://github.com/neilslater/maps_and_tiles'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = 'https://rubygems.com'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/neilslater/maps_and_tiles'
  spec.metadata['changelog_uri'] = 'https://github.com/neilslater/maps_and_tiles'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Gems
  spec.add_runtime_dependency 'rmagick', '~> 4.1'
end
