# frozen_string_literal: true

module Gw2
  module Api
    # game_mechanics.rb
    # This module is responsible for methods for querying information about game mechanics
    module GameMechanics
      # Returns the jade bots
      # @param [Hash] params the options to filter the jade bots
      # Valid Parameters
      # - id: [String] the id of the jade bot to filter
      # - ids: [String] the ids of the jade bots to filter comma seperated
      # - lang: [String] request localized information
      def jade_bots(params = {})
        execute_with_params("jadebots", params)
      end

      # Returns the legendary armory
      # @param [Hash] params the options to filter the legendary armory items
      # Valid Parameters
      # - id: [String] the id of the legendary armory item to filter
      # - ids: [String] the ids of the legendary armory items to filter comma seperated
      # - page: [String] the page number to filter
      # - page_size: [String] the page size to filter
      # - lang: [String] request localized information
      def legendary_armory(params = {})
        execute_with_params("legendaryarmory", params)
      end

      # Returns the revenant legends
      # @param [Hash] params the options to filter the revenant legends
      # Valid Parameters
      # - id: [String] the id of the revenant legend to filter
      # - ids: [String] the ids of the revenant legends to filter comma seperated
      # - lang: [String] request localized information
      # - page: [String] the page number to filter
      # - page_size: [String] the page size to filter
      def legends(params = {})
        execute_with_params("legends", params)
      end

      # Returns the masteries
      # @param [Hash] params the options to filter the masteries
      # Valid Parameters
      # - id: [String] the id of the mastery to filter
      # - ids: [String] the ids of the masteries to filter comma seperated
      # - lang: [String] request localized information
      def masteries(params = {})
        execute_with_params("masteries", params)
      end

      # Returns array of endpoints for mounts
      def mounts
        execute_request("mounts")
      end

      # Returns the mount skins
      # @param [Hash] params the options to filter the mount skins
      # Valid Parameters
      # - id: [String] the id of the mount skin to filter
      # - ids: [String] the ids of the mount skins to filter comma seperated
      # - page: [String] the page number to filter
      # - page_size: [String] the page size to filter
      # - lang: [String] request localized information
      def mount_skins(params = {})
        execute_with_params("mounts/skins", params)
      end

      # Returns the mount types
      # @param [Hash] params the options to filter the mount types
      # Valid Parameters
      # - id: [String] the id of the mount type to filter
      # - ids: [String] the ids of the mount types to filter comma seperated
      # - page: [String] the page number to filter
      # - page_size: [String] the page size to filter
      # - lang: [String] request localized information
      def mount_types(params = {})
        execute_with_params("mounts/types", params)
      end

      # Returns the outfits
      # @param [Hash] params the options to filter the outfits
      # Valid Parameters
      # - id: [String] the id of the outfit to filter
      # - ids: [String] the ids of the outfits to filter comma seperated
      # - page: [String] the page number to filter
      # - page_size: [String] the page size to filter
      # - lang: [String] request localized information
      def outfits(params = {})
        execute_with_params("outfits", params)
      end

      # Returns the ranger pets
      # @param [Hash] params the options to filter the ranger pets
      # Valid Parameters
      # - id: [String] the id of the ranger pet to filter
      # - ids: [String] the ids of the ranger pets to filter comma seperated
      # - page: [String] the page number to filter
      # - page_size: [String] the page size to filter
      # - lang: [String] request localized information
      def pets(params = {})
        execute_with_params("pets", params)
      end

      # Returns the professions
      # @param [Hash] params the options to filter the professions
      # Valid Parameters
      # - id: [String] the id of the profession to filter
      # - ids: [String] the ids of the professions to filter comma seperated
      # - page: [String] the page number to filter
      # - page_size: [String] the page size to filter
      # - lang: [String] request localized information
      def professions(params = {})
        execute_with_params("professions", params)
      end

      # Returns the playable races skills
      # @param [Hash] params the options to filter the playable races
      # Valid Parameters
      # - id: [String] the id/name of the race to filter
      # - ids: [String] the ids/names of races to filter
      def races(params = {})
        execute_with_params("races", params)
      end

      # Returns the skiffs
      # @param [Hash] params the options to filter the skiffs
      # Valid Parameters
      # - id: [String] the id of the skiff to filter
      # - ids: [String] the ids of the skiffs to filter comma seperated
      # - lang: [String] request localized information
      def skiffs(params = {})
        execute_with_params("skiffs", params)
      end

      # Returns the skills
      # @param [Hash] params the options to filter the skills
      # Valid Parameters
      # - id: [String] the id of the skill to filter
      # - ids: [String] the ids of the skills to filter comma seperated
      # - lang: [String] request localized information
      def skills(params = {})
        execute_with_params("skills", params)
      end

      # Returns the specializations
      # @param [Hash] params the options to filter the specializations
      # Valid Parameters
      # - id: [String] the id of the specialization to filter
      # - ids: [String] the ids of the specializations to filter comma seperated
      # - lang: [String] request localized information
      def specializations(params = {})
        execute_with_params("specializations", params)
      end

      # Returns the traits
      # @param [Hash] params the options to filter the traits
      # Valid Parameters
      # - id: [String] the id of the trait to filter
      # - ids: [String] the ids of the traits to filter comma seperated
      # - lang: [String] request localized information
      def traits(params = {})
        execute_with_params("traits", params)
      end
    end
  end
end
