=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for ComposioRuby::TeamApi
describe 'TeamApi' do
  before do
    # run before each test
    @api_instance = ComposioRuby::TeamApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TeamApi' do
    it 'should create an instance of TeamApi' do
      expect(@api_instance).to be_instance_of(ComposioRuby::TeamApi)
    end
  end

  # unit tests for invite_member
  # Invite member
  # @param x_api_key 
  # @param [Hash] opts the optional parameters
  # @option opts [InviteMemberReqDTO] :invite_member_req_dto InviteMemberReqDTO
  # @return [MemberResDTO]
  describe 'invite_member test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_members
  # List members
  # @param x_api_key 
  # @param [Hash] opts the optional parameters
  # @return [Array<MemberResDTO>]
  describe 'list_members test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_member
  # Remove member
  # @param x_api_key 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_member test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
