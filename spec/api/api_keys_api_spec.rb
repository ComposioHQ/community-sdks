=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for ComposioRuby::APIKeysApi
describe 'APIKeysApi' do
  before do
    # run before each test
    @api_instance = ComposioRuby::APIKeysApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of APIKeysApi' do
    it 'should create an instance of APIKeysApi' do
      expect(@api_instance).to be_instance_of(ComposioRuby::APIKeysApi)
    end
  end

  # unit tests for delete_api_key
  # Delete api key
  # @param x_api_key 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_api_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for generate_api_key
  # Generate api key
  # @param x_api_key 
  # @param generate_api_key_req_dto GenerateAPIKeyReqDTO
  # @param [Hash] opts the optional parameters
  # @return [APIKeyResDTO]
  describe 'generate_api_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_api_keys
  # List api keys
  # @param x_api_key 
  # @param [Hash] opts the optional parameters
  # @return [Array<APIKeyResDTO>]
  describe 'list_api_keys test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
