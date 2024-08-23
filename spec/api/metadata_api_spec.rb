=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for ComposioRuby::MetadataApi
describe 'MetadataApi' do
  before do
    # run before each test
    @api_instance = ComposioRuby::MetadataApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MetadataApi' do
    it 'should create an instance of MetadataApi' do
      expect(@api_instance).to be_instance_of(ComposioRuby::MetadataApi)
    end
  end

  # unit tests for get_metadata
  # Get metadata
  # @param x_api_key 
  # @param email 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_metadata test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_toggle_info
  # Get toggle info
  # @param x_api_key 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_toggle_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for toggle_trigger_state
  # Toggle trigger state
  # @param x_api_key 
  # @param [Hash] opts the optional parameters
  # @option opts [TriggersEnabledToggleReqDTO] :triggers_enabled_toggle_req_dto TriggersEnabledToggleReqDTO
  # @return [nil]
  describe 'toggle_trigger_state test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_metadata
  # Update metadata
  # @param x_api_key 
  # @param metadata_req_dto MetadataReqDTO
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_metadata test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
