=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for ComposioRuby::AdminApi
describe 'AdminApi' do
  before do
    # run before each test
    @api_instance = ComposioRuby::AdminApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AdminApi' do
    it 'should create an instance of AdminApi' do
      expect(@api_instance).to be_instance_of(ComposioRuby::AdminApi)
    end
  end

  # unit tests for get_sentry_dns
  # Sentry dns
  # @param x_api_key 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_sentry_dns test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
