=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for ComposioRuby::CLIApi
describe 'CLIApi' do
  before do
    # run before each test
    @api_instance = ComposioRuby::CLIApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CLIApi' do
    it 'should create an instance of CLIApi' do
      expect(@api_instance).to be_instance_of(ComposioRuby::CLIApi)
    end
  end

  # unit tests for generate_cli_session
  # Handle cli code exchange
  # @param x_api_key 
  # @param [Hash] opts the optional parameters
  # @return [GenerateCLISessionResDTO]
  describe 'generate_cli_session test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_cli_code
  # Get cli code
  # @param x_api_key 
  # @param key 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :code 
  # @return [GetCLISessionResDTO]
  describe 'get_cli_code test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for verify_cli_code
  # Handle cli code verification
  # @param x_api_key 
  # @param key 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :code 
  # @return [VerifyCLICodeResDTO]
  describe 'verify_cli_code test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
