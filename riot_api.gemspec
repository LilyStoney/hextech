# frozen_string_literal: true

require_relative 'lib/riot_api/version'

Gem::Specification.new do |spec|
  spec.name                        = 'riot_api'
  spec.version                     = RiotApi::VERSION
  spec.required_ruby_version       = Gem::Requirement.new('>= 2.7.0')
  spec.summary                     = 'Ruby Wrapper for the Riot API endpoints.'
  spec.description                 = 'An easy to use ruby wrapper for Riot API endpoints for League, Valorant,' \
                                     'Legends of Runeterra, etc.'
  spec.authors                     = ['Lily Stoney']
  spec.email                       = ['lily@lilypad.info']
  spec.homepage                    = 'https://github.com/LilyStoney/riot_api'
  spec.license                     = 'MIT'

  spec.metadata['bug_tracker_uri'] = 'https://github.com/lilystoney/riot_api/issues'
  spec.metadata['changelog_uri']   = 'https://github.com/lilystoney/riot_api/blob/master/CHANGELOG.md'
  spec.metadata['github_repo']     = 'ssh://github.com/lilystoney/riot_api'
  spec.metadata['source_code_uri'] = 'https://github.com/lilystoney/riot_api'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end

  spec.bindir                      = 'exe'
  spec.executables                 = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths               = ['lib']

  spec.add_dependency 'dry-struct'
  spec.add_dependency 'httparty'

  spec.add_development_dependency 'climate_control'
  spec.add_development_dependency 'pry', '~> 0.13.1'
  spec.add_development_dependency 'rspec', '~> 3.9.0'
  spec.add_development_dependency 'rubocop', '~> 0.93.1'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.43.2'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'webmock'
end
