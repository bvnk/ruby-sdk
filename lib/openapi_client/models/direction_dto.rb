=begin
#BVNK API Endpoints

#The BVNK API is designed to facilitate seamless and secure transactions including payments, channels, and digital wallet transactions.

The version of the OpenAPI document: 1.0.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'date'
require 'time'

module OpenapiClient
  class DirectionDto
    IN = "IN".freeze
    OUT = "OUT".freeze

    def self.all_vars
      @all_vars ||= [IN, OUT].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if DirectionDto.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #DirectionDto"
    end
  end
end