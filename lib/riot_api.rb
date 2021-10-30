# frozen_string_literal: true

require 'dry-struct'
require 'faraday'
require 'open-uri'

require 'riot_api/mixins/argument_checks'
require 'riot_api/mixins/callable'
require 'riot_api/mixins/transform_keys'

require 'riot_api/adapter'
require 'riot_api/send_request'
require 'riot_api/response'
require 'riot_api/base_struct'
require 'riot_api/errors'
require 'riot_api/global'
require 'riot_api/league'
require 'riot_api/version'
require 'riot_api/valorant'
