=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for ComposioRuby::LoginApi
describe 'LoginApi' do
  before do
    # run before each test
    @api_instance = ComposioRuby::LoginApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LoginApi' do
    it 'should create an instance of LoginApi' do
      expect(@api_instance).to be_instance_of(ComposioRuby::LoginApi)
    end
  end

  # unit tests for handle_o_auth2_login
  # Handle o auth 2 callback
  # @param x_api_key 
  # @param app_name 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :redirect_uri 
  # @return [nil]
  describe 'handle_o_auth2_login test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for verify_o_auth2_login
  # Verify o auth 2 login
  # @param x_api_key 
  # @param app_name 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'verify_o_auth2_login test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
