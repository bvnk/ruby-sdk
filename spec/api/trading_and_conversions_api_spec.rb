=begin
#BVNK API Endpoints

#The BVNK API is designed to facilitate seamless and secure transactions including payments, channels, anddigital wallet transactions.

The version of the OpenAPI document: 1.0.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::TradingAndConversionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TradingAndConversionsApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::TradingAndConversionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TradingAndConversionsApi' do
    it 'should create an instance of TradingAndConversionsApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::TradingAndConversionsApi)
    end
  end

  # unit tests for quote_accept
  # Accept Quote
  # Executes a quote.
  # @param uuid The quote UUID you are accepting.
  # @param [Hash] opts the optional parameters
  # @return [AcceptedQuote]
  describe 'quote_accept test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for quote_create
  # Create Quote
  # Creates a quote to convert between wallets.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :estimate Create estimate quote
  # @option opts [QuoteRequest] :quote_request 
  # @return [Quote]
  describe 'quote_create test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for quote_list
  # List Quotes
  # Retrieves all quotes on a specific Merchant ID.
  # @param merchant_id Merchant ID you are retrieving quotes from.
  # @param [Hash] opts the optional parameters
  # @return [Array<Quote>]
  describe 'quote_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for quote_read
  # Read Quote
  # Retrieves a specific quote.
  # @param uuid UUID of the quote you are retrieving.
  # @param [Hash] opts the optional parameters
  # @return [Quote]
  describe 'quote_read test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
