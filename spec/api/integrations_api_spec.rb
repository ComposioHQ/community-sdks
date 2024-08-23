=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for ComposioRuby::IntegrationsApi
describe 'IntegrationsApi' do
  before do
    # run before each test
    @api_instance = ComposioRuby::IntegrationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IntegrationsApi' do
    it 'should create an instance of IntegrationsApi' do
      expect(@api_instance).to be_instance_of(ComposioRuby::IntegrationsApi)
    end
  end

  # unit tests for create_connector
  # Create connector
  # @param x_api_key 
  # @param [Hash] opts the optional parameters
  # @option opts [CreateConnectorPayloadDTO] :create_connector_payload_dto CreateConnectorPayloadDTO
  # @return [GetConnectorInfoResDTO]
  describe 'create_connector test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_connector
  # Delete connector
  # @param x_api_key 
  # @param integration_id 
  # @param [Hash] opts the optional parameters
  # @return [DeleteRowAPIDTO]
  describe 'delete_connector test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_connector_info
  # Get connector info
  # @param x_api_key 
  # @param integration_id 
  # @param [Hash] opts the optional parameters
  # @return [GetConnectorInfoResDTO]
  describe 'get_connector_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_global_connectors
  # List global connectors
  # @param x_api_key 
  # @param [Hash] opts the optional parameters
  # @return [GetConnectorListResDTO]
  describe 'list_global_connectors test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_connector
  # Patch connector
  # @param x_api_key 
  # @param integration_id 
  # @param [Hash] opts the optional parameters
  # @option opts [PatchConnectorReqDTO] :patch_connector_req_dto PatchConnectorReqDTO
  # @return [PatchConnectorResDTO]
  describe 'patch_connector test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_post_connector
  # Patch post connector
  # @param x_api_key 
  # @param integration_id 
  # @param [Hash] opts the optional parameters
  # @option opts [PatchConnectorReqDTO] :patch_connector_req_dto PatchConnectorReqDTO
  # @return [PatchConnectorResDTO]
  describe 'patch_post_connector test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
