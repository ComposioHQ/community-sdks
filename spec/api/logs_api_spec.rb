=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for ComposioRuby::LogsApi
describe 'LogsApi' do
  before do
    # run before each test
    @api_instance = ComposioRuby::LogsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LogsApi' do
    it 'should create an instance of LogsApi' do
      expect(@api_instance).to be_instance_of(ComposioRuby::LogsApi)
    end
  end

  # unit tests for get_logs
  # Get logs
  # List logs
  # @param x_api_key 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type 
  # @option opts [String] :time 
  # @option opts [String] :status 
  # @option opts [String] :search 
  # @option opts [String] :integration_id 
  # @option opts [Float] :limit 
  # @option opts [String] :cursor 
  # @option opts [String] :connection_id 
  # @return [LogsResDTO]
  describe 'get_logs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
