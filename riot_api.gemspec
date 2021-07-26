# frozen_string_literal: true

require_relative 'lib/riot_api/version'

Gem::Specification.new do |spec|
  spec.name          = 'riot_api'
  spec.version       = RiotApi::VERSION
  spec.authors       = ['Lily Stoney']
  spec.email         = ['lily@lilypad.info']

  spec.summary       = 'Ruby Wrapper for the Riot API endpoints.'
  # spec.description   = 'TODO: Write a longer description or delete this line.'
  spec.homepage      = 'https://github.com/LilyStoney/riot_api'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.7.0')

  # spec.metadata['allowed_push_host'] = 'TODO: Set to 'http://mygemserver.com''

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/LilyStoney/riot_api'
  # spec.metadata['changelog_uri'] = 'TODO: Put your gem's CHANGELOG.md URL here.'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'httparty'
  spec.add_dependency 'values'

  spec.add_development_dependency 'pry', '~> 0.13.1'
  spec.add_development_dependency 'rspec', '~> 3.9.0'
  spec.add_development_dependency 'rubocop', '~> 0.93.1'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.43.2'
end
