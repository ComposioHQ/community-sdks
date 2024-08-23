=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for ComposioRuby::ActionsApi
describe 'ActionsApi' do
  before do
    # run before each test
    @api_instance = ComposioRuby::ActionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ActionsApi' do
    it 'should create an instance of ActionsApi' do
      expect(@api_instance).to be_instance_of(ComposioRuby::ActionsApi)
    end
  end

  # unit tests for execute_action_proxy
  # Execute action proxy
  # @param x_api_key 
  # @param endpoint 
  # @param connected_account_id 
  # @param [Hash] opts the optional parameters
  # @return [ExecuteActionResDTO]
  describe 'execute_action_proxy test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for execute_action_proxy_v2
  # Execute action proxy
  # Execute an action with direct auth.
  # @param x_api_key 
  # @param endpoint 
  # @param connected_account_id 
  # @param [Hash] opts the optional parameters
  # @return [ActionExecutionResDto]
  describe 'execute_action_proxy_v2 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for execute_action_v1
  # Execute action
  # @param x_api_key 
  # @param action_id 
  # @param [Hash] opts the optional parameters
  # @option opts [ActionExecutionReqDTO] :action_execution_req_dto ActionExecutionReqDTO
  # @return [ActionExecutionResDto]
  describe 'execute_action_v1 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for execute_action_v2
  # Execute action
  # Execute an action. Support both connected account and no auth auth.
  # @param x_api_key 
  # @param action_id 
  # @param [Hash] opts the optional parameters
  # @option opts [ActionExecutionReqDTO] :action_execution_req_dto ActionExecutionReqDTO
  # @return [ActionExecutionResDto]
  describe 'execute_action_v2 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_action_v1
  # Get action
  # @param x_api_key 
  # @param action_id 
  # @param [Hash] opts the optional parameters
  # @return [ActionDetails]
  describe 'get_action_v1 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_action_v2
  # Get action
  # Get action details
  # @param x_api_key 
  # @param action_id 
  # @param [Hash] opts the optional parameters
  # @return [ActionDetails]
  describe 'get_action_v2 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_actions_minimal_v2
  # List actions minimal
  # Retrieve a list of all actions based on query parameters.
  # @param x_api_key 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :app_names 
  # @option opts [String] :use_case 
  # @option opts [Boolean] :show_enabled_only 
  # @option opts [Float] :limit 
  # @option opts [String] :apps 
  # @option opts [String] :actions 
  # @option opts [String] :tags 
  # @option opts [Float] :usecase_limit 
  # @option opts [Boolean] :filter_important_actions 
  # @option opts [Boolean] :show_all 
  # @return [ActionsListResponseDTO]
  describe 'list_actions_minimal_v2 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_actions_v1
  # List actions
  # @param x_api_key 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :app_names 
  # @option opts [String] :use_case 
  # @option opts [Boolean] :show_enabled_only 
  # @option opts [Float] :limit 
  # @option opts [String] :apps 
  # @option opts [String] :actions 
  # @option opts [String] :tags 
  # @option opts [Float] :usecase_limit 
  # @option opts [Boolean] :filter_important_actions 
  # @option opts [Boolean] :show_all 
  # @return [ActionsListResponseDTO]
  describe 'list_actions_v1 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_actions_v2
  # List actions
  # Retrieve a list of all actions based on query parameters.
  # @param x_api_key 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :app_names 
  # @option opts [String] :use_case 
  # @option opts [Boolean] :show_enabled_only 
  # @option opts [Float] :limit 
  # @option opts [String] :apps 
  # @option opts [String] :actions 
  # @option opts [String] :tags 
  # @option opts [Float] :usecase_limit 
  # @option opts [Boolean] :filter_important_actions 
  # @option opts [Boolean] :show_all 
  # @return [ActionsListResponseDTO]
  describe 'list_actions_v2 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
