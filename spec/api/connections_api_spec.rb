=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for ComposioRuby::ConnectionsApi
describe 'ConnectionsApi' do
  before do
    # run before each test
    @api_instance = ComposioRuby::ConnectionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ConnectionsApi' do
    it 'should create an instance of ConnectionsApi' do
      expect(@api_instance).to be_instance_of(ComposioRuby::ConnectionsApi)
    end
  end

  # unit tests for delete_connection
  # Delete connection
  # @param x_api_key 
  # @param connected_account_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_connection test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for disable_connection
  # Disable connection
  # @param x_api_key 
  # @param connected_account_id 
  # @param [Hash] opts the optional parameters
  # @return [ToggleConnectedAccountResponseDTO]
  describe 'disable_connection test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for enable_connection
  # Enable connection
  # @param x_api_key 
  # @param connected_account_id 
  # @param [Hash] opts the optional parameters
  # @return [ToggleConnectedAccountResponseDTO]
  describe 'enable_connection test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_connection
  # Get connection
  # @param x_api_key 
  # @param connected_account_id 
  # @param [Hash] opts the optional parameters
  # @return [ConnectedAccountResponseDTO]
  describe 'get_connection test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_connections
  # Get connections
  # @param x_api_key 
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :page 
  # @option opts [Float] :page_size 
  # @option opts [Object] :app_names 
  # @option opts [String] :integration_id 
  # @option opts [String] :connection_id 
  # @option opts [String] :user_uuid 
  # @option opts [Boolean] :show_active_only 
  # @option opts [String] :status 
  # @option opts [Boolean] :show_disabled 
  # @return [GetConnectionsResponseDto]
  describe 'get_connections test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for initiate_connection
  # Initiate connection
  # @param x_api_key 
  # @param [Hash] opts the optional parameters
  # @option opts [InitiateConnectionPayloadDto] :initiate_connection_payload_dto InitiateConnectionPayloadDto
  # @return [InitiateConnectionResponse]
  describe 'initiate_connection test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
