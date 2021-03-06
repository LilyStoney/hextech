# frozen_string_literal: true

require 'simplecov'

SimpleCov.start

require 'hextech'
require 'bundler/setup'
require 'faraday'
require 'webmock'
require 'climate_control'
require 'vcr'
require 'pry'

ENV['RIOT_API_KEY'] = 'RGAPI-example-api-key'

RSpec.configure do |config|
  config.before { allow($stdout).to receive(:write) }

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end

VCR.configure do |config|
  config.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
  config.hook_into :webmock
  config.configure_rspec_metadata!
end
