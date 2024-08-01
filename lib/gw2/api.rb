# frozen_string_literal: true

require_relative "api/version"
require "net/http"
require_relative "modules/achievements"
require_relative "modules/account"
require_relative "modules/character"
require_relative "modules/game_mechanics"
require_relative "modules/pvp"

module Gw2
  module Api
    # Used to create a client to talk to the Guild Wars 2 API
    # Arguments
    # @args [Hash] the arguments to create the client
    # Valid Arguments
    # - api_key: [String] the api key to use for the client, defaults to ENV["GW2_API_KEY"]
    # Variables
    # @api_key [String] the api key to use for the client
    # @base_url [String] the base url for the API
    # See modules for available methods
    # See https://wiki.guildwars2.com/wiki/API:Main
    class Client
      include Gw2::Api::Achievements
      include Gw2::Api::Account
      include Gw2::Api::Characters
      include Gw2::Api::GameMechanics
      include Gw2::Api::Pvp

      def initialize(args)
        @api_key = args[:api_key] || ENV.fetch("GW2_API_KEY", nil)
        @base_url = "https://api.guildwars2.com/v2"
      end

      # Executes a request with parameters
      def execute_with_params(endpoint, parameters)
        output = endpoint

        return execute_request(output) if parameters.empty?

        output += "?"
        parameters.each do |key, value|
          output += "#{key}=#{value}&"
        end
        execute_request(output)
      end

      # Executes a request
      # @endpoint [String] the endpoint to request, e.g. achievements
      # @return [Net::HTTP] the response from the request
      def execute_request(endpoint)
        uri = URI("#{@base_url}/#{endpoint}")
        request = Net::HTTP::Get.new(uri)
        request["Authorization"] = "Bearer #{@api_key}"

        Net::HTTP.start(request.uri.hostname, request.uri.port, use_ssl: true) do |http|
          http.request(request)
        end
      end
    end
  end
end
