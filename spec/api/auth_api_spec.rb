=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for ComposioRuby::AuthApi
describe 'AuthApi' do
  before do
    # run before each test
    @api_instance = ComposioRuby::AuthApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthApi' do
    it 'should create an instance of AuthApi' do
      expect(@api_instance).to be_instance_of(ComposioRuby::AuthApi)
    end
  end

  # unit tests for delete_client
  # Delete client
  # @param x_api_key 
  # @param client_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_client test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_info
  # Get client info
  # @param x_api_key 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_user_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for google_login
  # Google login
  # @param x_api_key 
  # @param [Hash] opts the optional parameters
  # @option opts [Object] :body 
  # @return [nil]
  describe 'google_login test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for identify_client
  # Identify client
  # @param x_api_key 
  # @param [Hash] opts the optional parameters
  # @option opts [IdentifyClientReqDTO] :identify_client_req_dto IdentifyClientReqDTO
  # @return [IdentifyClientResDTO]
  describe 'identify_client test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for logout
  # Logout API
  # Logout the user and clear the server side session
  # @param x_api_key 
  # @param [Hash] opts the optional parameters
  # @return [LogoutResDTO]
  describe 'logout test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for pusher_user_auth
  # Pusher user auth
  # @param x_api_key 
  # @param [Hash] opts the optional parameters
  # @option opts [Object] :body 
  # @return [nil]
  describe 'pusher_user_auth test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_magic_link
  # Send magic link
  # @param x_api_key 
  # @param [Hash] opts the optional parameters
  # @option opts [MagicLinkReqDTO] :magic_link_req_dto MagicLinkReqDTO
  # @return [MagicLinkResDTO]
  describe 'send_magic_link test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for track_client
  # Track client
  # @param x_api_key 
  # @param [Hash] opts the optional parameters
  # @option opts [TrackClientReqDTO] :track_client_req_dto TrackClientReqDTO
  # @return [TrackClientResDTO]
  describe 'track_client test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for verify_magic_link
  # Verify magic link
  # @param x_api_key 
  # @param [Hash] opts the optional parameters
  # @option opts [VerifyMagicLinkReqDTO] :verify_magic_link_req_dto VerifyMagicLinkReqDTO
  # @return [VerifyMagicLinkResDTO]
  describe 'verify_magic_link test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
