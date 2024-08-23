=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for ComposioRuby::AppsApi
describe 'AppsApi' do
  before do
    # run before each test
    @api_instance = ComposioRuby::AppsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AppsApi' do
    it 'should create an instance of AppsApi' do
      expect(@api_instance).to be_instance_of(ComposioRuby::AppsApi)
    end
  end

  # unit tests for get_app
  # Get app
  # Get app details
  # @param x_api_key 
  # @param app_name 
  # @param [Hash] opts the optional parameters
  # @return [SingleAppInfoResDTO]
  describe 'get_app test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_apps
  # Get apps
  # Retrieve a list of all applications based on query parameters.
  # @param x_api_key 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :category 
  # @return [AppListResDTO]
  describe 'get_apps test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_open_api_specs
  # Get opena api specs
  # @param x_api_key 
  # @param [Hash] opts the optional parameters
  # @return [Array<AppListResDTO>]
  describe 'get_open_api_specs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
