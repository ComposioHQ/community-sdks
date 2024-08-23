=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

require 'forwardable'

# Common files
require 'composio-ruby/api_client'
require 'composio-ruby/api_error'
require 'composio-ruby/version'
require 'composio-ruby/configuration'

# Models
require 'composio-ruby/models/api_key_res_dto'
require 'composio-ruby/models/action_details'
require 'composio-ruby/models/action_details_minimal'
require 'composio-ruby/models/action_execution_req_dto'
require 'composio-ruby/models/action_execution_res_dto'
require 'composio-ruby/models/action_execution_res_dto'
require 'composio-ruby/models/action_log_data'
require 'composio-ruby/models/action_metadata'
require 'composio-ruby/models/action_metadata_type'
require 'composio-ruby/models/actions_controller_v1'
require 'composio-ruby/models/actions_list_response_dto'
require 'composio-ruby/models/actions_minimal_list_response_dto'
require 'composio-ruby/models/actions_query_dto'
require 'composio-ruby/models/active_trigger_instance'
require 'composio-ruby/models/active_triggers_res_dto'
require 'composio-ruby/models/add_repo_url_req_dto'
require 'composio-ruby/models/add_repo_url_res_dto'
require 'composio-ruby/models/add_tools_req_dto'
require 'composio-ruby/models/add_tools_request_dto'
require 'composio-ruby/models/app_info_response_dto'
require 'composio-ruby/models/app_list_res_dto'
require 'composio-ruby/models/app_query_dto'
require 'composio-ruby/models/auth_config_dto'
require 'composio-ruby/models/cli_query_dto'
require 'composio-ruby/models/connected_account_response_dto'
require 'composio-ruby/models/connection_params'
require 'composio-ruby/models/connection_params_for_account'
require 'composio-ruby/models/connection_params_headers'
require 'composio-ruby/models/connection_with_app_data'
require 'composio-ruby/models/connection_with_app_data_created_at'
require 'composio-ruby/models/connector_list_item_dto'
require 'composio-ruby/models/connector_list_item_dto_created_at'
require 'composio-ruby/models/connector_list_item_dto_updated_at'
require 'composio-ruby/models/create_connector_payload_dto'
require 'composio-ruby/models/create_connector_payload_dto_use_composio_auth'
require 'composio-ruby/models/delete_api_key_req_dto'
require 'composio-ruby/models/delete_row_apidto'
require 'composio-ruby/models/delete_tools_req_dto'
require 'composio-ruby/models/delete_tools_res_dto'
require 'composio-ruby/models/direct_execute_req_dto'
require 'composio-ruby/models/enable_trigger_body_dto'
require 'composio-ruby/models/enable_trigger_params_dto'
require 'composio-ruby/models/execute_action_res_dto'
require 'composio-ruby/models/generate_api_key_req_dto'
require 'composio-ruby/models/generate_cli_session_req_dto'
require 'composio-ruby/models/generate_cli_session_res_dto'
require 'composio-ruby/models/get_active_triggers_query_dto'
require 'composio-ruby/models/get_cli_session_res_dto'
require 'composio-ruby/models/get_connections_query_dto'
require 'composio-ruby/models/get_connections_response_dto'
require 'composio-ruby/models/get_connections_result'
require 'composio-ruby/models/get_connector_info_res_dto'
require 'composio-ruby/models/get_connector_list_res_dto'
require 'composio-ruby/models/get_logs_dto'
require 'composio-ruby/models/get_logs_query_dto'
require 'composio-ruby/models/get_trigger_params_dto'
require 'composio-ruby/models/handle_trigger_body_dto'
require 'composio-ruby/models/handle_trigger_params_dto'
require 'composio-ruby/models/identify_client_req_dto'
require 'composio-ruby/models/identify_client_res_dto'
require 'composio-ruby/models/initiate_connection_payload_dto'
require 'composio-ruby/models/initiate_connection_response'
require 'composio-ruby/models/invite_member_req_dto'
require 'composio-ruby/models/job_status'
require 'composio-ruby/models/list_triggers_query_dto'
require 'composio-ruby/models/login_account_as_admin_req_dto'
require 'composio-ruby/models/logout_res_dto'
require 'composio-ruby/models/logs_res_dto'
require 'composio-ruby/models/magic_link_req_dto'
require 'composio-ruby/models/magic_link_res_dto'
require 'composio-ruby/models/member_res_dto'
require 'composio-ruby/models/meta'
require 'composio-ruby/models/meta_app'
require 'composio-ruby/models/metadata_query_dto'
require 'composio-ruby/models/metadata_req_dto'
require 'composio-ruby/models/o_auth2_callback_query_dto'
require 'composio-ruby/models/open_api_spec_list_res_dto'
require 'composio-ruby/models/page_info'
require 'composio-ruby/models/page_info_dto'
require 'composio-ruby/models/patch_connector_req_dto'
require 'composio-ruby/models/patch_connector_res_dto'
require 'composio-ruby/models/proxy_execution_req_dto'
require 'composio-ruby/models/redirect_uri_dto'
require 'composio-ruby/models/set_callback_url_body_dto'
require 'composio-ruby/models/single_app_info_res_dto'
require 'composio-ruby/models/single_trigger_res_dto'
require 'composio-ruby/models/status'
require 'composio-ruby/models/switch_trigger_status_body_dto'
require 'composio-ruby/models/switch_trigger_status_params_dto'
require 'composio-ruby/models/time'
require 'composio-ruby/models/toggle_connected_account_response_dto'
require 'composio-ruby/models/tools_execute_req_dto'
require 'composio-ruby/models/track_client_req_dto'
require 'composio-ruby/models/track_client_res_dto'
require 'composio-ruby/models/trigger_config'
require 'composio-ruby/models/trigger_instance_params_dto'
require 'composio-ruby/models/trigger_log_data'
require 'composio-ruby/models/trigger_log_item_dto'
require 'composio-ruby/models/trigger_logs_res_dto'
require 'composio-ruby/models/trigger_metadata'
require 'composio-ruby/models/trigger_metadata_type'
require 'composio-ruby/models/trigger_res_dto'
require 'composio-ruby/models/trigger_response_dto'
require 'composio-ruby/models/triggers_enabled_toggle_req_dto'
require 'composio-ruby/models/triggers_enabled_toggle_res_dto'
require 'composio-ruby/models/type'
require 'composio-ruby/models/user_git_user_info'
require 'composio-ruby/models/verify_cli_code_res_dto'
require 'composio-ruby/models/verify_magic_link_data_dto'
require 'composio-ruby/models/verify_magic_link_req_dto'
require 'composio-ruby/models/verify_magic_link_res_dto'
require 'composio-ruby/models/webhook_url_response_dto'

# APIs
require 'composio-ruby/api/api_keys_api'
require 'composio-ruby/api/actions_api'
require 'composio-ruby/api/admin_api'
require 'composio-ruby/api/apps_api'
require 'composio-ruby/api/auth_api'
require 'composio-ruby/api/cli_api'
require 'composio-ruby/api/connections_api'
require 'composio-ruby/api/integrations_api'
require 'composio-ruby/api/login_api'
require 'composio-ruby/api/logs_api'
require 'composio-ruby/api/metadata_api'
require 'composio-ruby/api/team_api'
require 'composio-ruby/api/triggers_api'

module ComposioRuby
  @config = Configuration.default
  SENTINEL = Object.new
  class << self

    private def is_sentinel(value)
      value == SENTINEL
    end

    def host
      @config.host
    end

    def host=(value)
      @config.host = value
    end
    # api key from OpenAPI spec
    def api_key
      @config.api_key
    end

    def api_key=(value)
      @config.api_key = value
    end

    # Customize default settings for the SDK using block.
    #   ComposioRuby.configure do |config|
    #     config.host = "http://example.com"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end

  class Client
    attr_reader :api_keys
    attr_reader :actions
    attr_reader :admin
    attr_reader :apps
    attr_reader :auth
    attr_reader :cli
    attr_reader :connections
    attr_reader :integrations
    attr_reader :login
    attr_reader :logs
    attr_reader :metadata
    attr_reader :team
    attr_reader :triggers

    def initialize(config = Configuration.default)
      @api_client = ApiClient::new(config)
      @api_keys = ComposioRuby::APIKeysApi.new(@api_client)
      @actions = ComposioRuby::ActionsApi.new(@api_client)
      @admin = ComposioRuby::AdminApi.new(@api_client)
      @apps = ComposioRuby::AppsApi.new(@api_client)
      @auth = ComposioRuby::AuthApi.new(@api_client)
      @cli = ComposioRuby::CLIApi.new(@api_client)
      @connections = ComposioRuby::ConnectionsApi.new(@api_client)
      @integrations = ComposioRuby::IntegrationsApi.new(@api_client)
      @login = ComposioRuby::LoginApi.new(@api_client)
      @logs = ComposioRuby::LogsApi.new(@api_client)
      @metadata = ComposioRuby::MetadataApi.new(@api_client)
      @team = ComposioRuby::TeamApi.new(@api_client)
      @triggers = ComposioRuby::TriggersApi.new(@api_client)
    end
  end
end
