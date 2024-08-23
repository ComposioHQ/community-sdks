=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

require 'cgi'

module ComposioRuby
  class IntegrationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create connector
    #
    # @param name [String] Name of the connector
    # @param app_id [String] Application ID
    # @param x_api_key [String] 
    # @param auth_scheme [String] Authentication scheme
    # @param auth_config [AuthConfigDTO] 
    # @param use_composio_auth [CreateConnectorPayloadDTOUseComposioAuth] 
    # @param force_new_integration [Boolean] Flag to force new integration
    # @param body [CreateConnectorPayloadDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def create_connector(name:, app_id:, x_api_key:, auth_scheme: SENTINEL, auth_config: SENTINEL, use_composio_auth: SENTINEL, force_new_integration: SENTINEL, extra: {})
      _body = {}
      _body[:name] = name if name != SENTINEL
      _body[:authScheme] = auth_scheme if auth_scheme != SENTINEL
      _body[:authConfig] = auth_config if auth_config != SENTINEL
      _body[:useComposioAuth] = use_composio_auth if use_composio_auth != SENTINEL
      _body[:appId] = app_id if app_id != SENTINEL
      _body[:forceNewIntegration] = force_new_integration if force_new_integration != SENTINEL
      extra[:create_connector_payload_dto] = _body if !_body.empty?
      api_response = create_connector_with_http_info_impl(x_api_key, extra)
      api_response.data
    end

    # Create connector
    #
    # @param name [String] Name of the connector
    # @param app_id [String] Application ID
    # @param x_api_key [String] 
    # @param auth_scheme [String] Authentication scheme
    # @param auth_config [AuthConfigDTO] 
    # @param use_composio_auth [CreateConnectorPayloadDTOUseComposioAuth] 
    # @param force_new_integration [Boolean] Flag to force new integration
    # @param body [CreateConnectorPayloadDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def create_connector_with_http_info(name:, app_id:, x_api_key:, auth_scheme: SENTINEL, auth_config: SENTINEL, use_composio_auth: SENTINEL, force_new_integration: SENTINEL, extra: {})
      _body = {}
      _body[:name] = name if name != SENTINEL
      _body[:authScheme] = auth_scheme if auth_scheme != SENTINEL
      _body[:authConfig] = auth_config if auth_config != SENTINEL
      _body[:useComposioAuth] = use_composio_auth if use_composio_auth != SENTINEL
      _body[:appId] = app_id if app_id != SENTINEL
      _body[:forceNewIntegration] = force_new_integration if force_new_integration != SENTINEL
      extra[:create_connector_payload_dto] = _body if !_body.empty?
      create_connector_with_http_info_impl(x_api_key, extra)
    end

    # Create connector
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateConnectorPayloadDTO] :create_connector_payload_dto CreateConnectorPayloadDTO
    # @return [GetConnectorInfoResDTO]
    private def create_connector_impl(x_api_key, opts = {})
      data, _status_code, _headers = create_connector_with_http_info(x_api_key, opts)
      data
    end

    # Create connector
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateConnectorPayloadDTO] :create_connector_payload_dto CreateConnectorPayloadDTO
    # @return [APIResponse] data is GetConnectorInfoResDTO, status code, headers and response
    private def create_connector_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.create_connector ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling IntegrationsApi.create_connector"
      end
      # resource path
      local_var_path = '/api/v1/integrations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html; charset=utf-8'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end
      header_params[:'x-api-key'] = x_api_key

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_connector_payload_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'GetConnectorInfoResDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"IntegrationsApi.create_connector",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#create_connector\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Delete connector
    #
    # @param x_api_key [String] 
    # @param integration_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_connector(x_api_key:, integration_id:, extra: {})
      api_response = delete_connector_with_http_info_impl(x_api_key, integration_id, extra)
      api_response.data
    end

    # Delete connector
    #
    # @param x_api_key [String] 
    # @param integration_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_connector_with_http_info(x_api_key:, integration_id:, extra: {})
      delete_connector_with_http_info_impl(x_api_key, integration_id, extra)
    end

    # Delete connector
    # @param x_api_key [String] 
    # @param integration_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [DeleteRowAPIDTO]
    private def delete_connector_impl(x_api_key, integration_id, opts = {})
      data, _status_code, _headers = delete_connector_with_http_info(x_api_key, integration_id, opts)
      data
    end

    # Delete connector
    # @param x_api_key [String] 
    # @param integration_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is DeleteRowAPIDTO, status code, headers and response
    private def delete_connector_with_http_info_impl(x_api_key, integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.delete_connector ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling IntegrationsApi.delete_connector"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling IntegrationsApi.delete_connector"
      end
      pattern = Regexp.new(/[^\\/#\?]+?/)
      if @api_client.config.client_side_validation && integration_id !~ pattern
        fail ArgumentError, "invalid value for 'integration_id' when calling IntegrationsApi.delete_connector, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/integrations/{integrationId}'.sub('{' + 'integrationId' + '}', CGI.escape(integration_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html; charset=utf-8'])
      header_params[:'x-api-key'] = x_api_key

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DeleteRowAPIDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"IntegrationsApi.delete_connector",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#delete_connector\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get connector info
    #
    # @param x_api_key [String] 
    # @param integration_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_connector_info(x_api_key:, integration_id:, extra: {})
      api_response = get_connector_info_with_http_info_impl(x_api_key, integration_id, extra)
      api_response.data
    end

    # Get connector info
    #
    # @param x_api_key [String] 
    # @param integration_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_connector_info_with_http_info(x_api_key:, integration_id:, extra: {})
      get_connector_info_with_http_info_impl(x_api_key, integration_id, extra)
    end

    # Get connector info
    # @param x_api_key [String] 
    # @param integration_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [GetConnectorInfoResDTO]
    private def get_connector_info_impl(x_api_key, integration_id, opts = {})
      data, _status_code, _headers = get_connector_info_with_http_info(x_api_key, integration_id, opts)
      data
    end

    # Get connector info
    # @param x_api_key [String] 
    # @param integration_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is GetConnectorInfoResDTO, status code, headers and response
    private def get_connector_info_with_http_info_impl(x_api_key, integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.get_connector_info ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling IntegrationsApi.get_connector_info"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling IntegrationsApi.get_connector_info"
      end
      pattern = Regexp.new(/[^\\/#\?]+?/)
      if @api_client.config.client_side_validation && integration_id !~ pattern
        fail ArgumentError, "invalid value for 'integration_id' when calling IntegrationsApi.get_connector_info, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/integrations/{integrationId}'.sub('{' + 'integrationId' + '}', CGI.escape(integration_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html; charset=utf-8'])
      header_params[:'x-api-key'] = x_api_key

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetConnectorInfoResDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"IntegrationsApi.get_connector_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#get_connector_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # List global connectors
    #
    # @param x_api_key [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_global_connectors(x_api_key:, extra: {})
      api_response = list_global_connectors_with_http_info_impl(x_api_key, extra)
      api_response.data
    end

    # List global connectors
    #
    # @param x_api_key [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_global_connectors_with_http_info(x_api_key:, extra: {})
      list_global_connectors_with_http_info_impl(x_api_key, extra)
    end

    # List global connectors
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [GetConnectorListResDTO]
    private def list_global_connectors_impl(x_api_key, opts = {})
      data, _status_code, _headers = list_global_connectors_with_http_info(x_api_key, opts)
      data
    end

    # List global connectors
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is GetConnectorListResDTO, status code, headers and response
    private def list_global_connectors_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.list_global_connectors ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling IntegrationsApi.list_global_connectors"
      end
      # resource path
      local_var_path = '/api/v1/integrations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html; charset=utf-8'])
      header_params[:'x-api-key'] = x_api_key

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetConnectorListResDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"IntegrationsApi.list_global_connectors",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#list_global_connectors\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Patch connector
    #
    # @param x_api_key [String] 
    # @param integration_id [String] 
    # @param auth_config [Object] Authentication configuration for the connector
    # @param enabled [Boolean] Flag to indicate if the connector is enabled
    # @param body [PatchConnectorReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def patch_connector(x_api_key:, integration_id:, auth_config: SENTINEL, enabled: SENTINEL, extra: {})
      _body = {}
      _body[:authConfig] = auth_config if auth_config != SENTINEL
      _body[:enabled] = enabled if enabled != SENTINEL
      extra[:patch_connector_req_dto] = _body if !_body.empty?
      api_response = patch_connector_with_http_info_impl(x_api_key, integration_id, extra)
      api_response.data
    end

    # Patch connector
    #
    # @param x_api_key [String] 
    # @param integration_id [String] 
    # @param auth_config [Object] Authentication configuration for the connector
    # @param enabled [Boolean] Flag to indicate if the connector is enabled
    # @param body [PatchConnectorReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def patch_connector_with_http_info(x_api_key:, integration_id:, auth_config: SENTINEL, enabled: SENTINEL, extra: {})
      _body = {}
      _body[:authConfig] = auth_config if auth_config != SENTINEL
      _body[:enabled] = enabled if enabled != SENTINEL
      extra[:patch_connector_req_dto] = _body if !_body.empty?
      patch_connector_with_http_info_impl(x_api_key, integration_id, extra)
    end

    # Patch connector
    # @param x_api_key [String] 
    # @param integration_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [PatchConnectorReqDTO] :patch_connector_req_dto PatchConnectorReqDTO
    # @return [PatchConnectorResDTO]
    private def patch_connector_impl(x_api_key, integration_id, opts = {})
      data, _status_code, _headers = patch_connector_with_http_info(x_api_key, integration_id, opts)
      data
    end

    # Patch connector
    # @param x_api_key [String] 
    # @param integration_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [PatchConnectorReqDTO] :patch_connector_req_dto PatchConnectorReqDTO
    # @return [APIResponse] data is PatchConnectorResDTO, status code, headers and response
    private def patch_connector_with_http_info_impl(x_api_key, integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.patch_connector ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling IntegrationsApi.patch_connector"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling IntegrationsApi.patch_connector"
      end
      pattern = Regexp.new(/[^\\/#\?]+?/)
      if @api_client.config.client_side_validation && integration_id !~ pattern
        fail ArgumentError, "invalid value for 'integration_id' when calling IntegrationsApi.patch_connector, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/integrations/{integrationId}'.sub('{' + 'integrationId' + '}', CGI.escape(integration_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html; charset=utf-8'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end
      header_params[:'x-api-key'] = x_api_key

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'patch_connector_req_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'PatchConnectorResDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"IntegrationsApi.patch_connector",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#patch_connector\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Patch post connector
    #
    # @param x_api_key [String] 
    # @param integration_id [String] 
    # @param auth_config [Object] Authentication configuration for the connector
    # @param enabled [Boolean] Flag to indicate if the connector is enabled
    # @param body [PatchConnectorReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def patch_post_connector(x_api_key:, integration_id:, auth_config: SENTINEL, enabled: SENTINEL, extra: {})
      _body = {}
      _body[:authConfig] = auth_config if auth_config != SENTINEL
      _body[:enabled] = enabled if enabled != SENTINEL
      extra[:patch_connector_req_dto] = _body if !_body.empty?
      api_response = patch_post_connector_with_http_info_impl(x_api_key, integration_id, extra)
      api_response.data
    end

    # Patch post connector
    #
    # @param x_api_key [String] 
    # @param integration_id [String] 
    # @param auth_config [Object] Authentication configuration for the connector
    # @param enabled [Boolean] Flag to indicate if the connector is enabled
    # @param body [PatchConnectorReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def patch_post_connector_with_http_info(x_api_key:, integration_id:, auth_config: SENTINEL, enabled: SENTINEL, extra: {})
      _body = {}
      _body[:authConfig] = auth_config if auth_config != SENTINEL
      _body[:enabled] = enabled if enabled != SENTINEL
      extra[:patch_connector_req_dto] = _body if !_body.empty?
      patch_post_connector_with_http_info_impl(x_api_key, integration_id, extra)
    end

    # Patch post connector
    # @param x_api_key [String] 
    # @param integration_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [PatchConnectorReqDTO] :patch_connector_req_dto PatchConnectorReqDTO
    # @return [PatchConnectorResDTO]
    private def patch_post_connector_impl(x_api_key, integration_id, opts = {})
      data, _status_code, _headers = patch_post_connector_with_http_info(x_api_key, integration_id, opts)
      data
    end

    # Patch post connector
    # @param x_api_key [String] 
    # @param integration_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [PatchConnectorReqDTO] :patch_connector_req_dto PatchConnectorReqDTO
    # @return [APIResponse] data is PatchConnectorResDTO, status code, headers and response
    private def patch_post_connector_with_http_info_impl(x_api_key, integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.patch_post_connector ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling IntegrationsApi.patch_post_connector"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling IntegrationsApi.patch_post_connector"
      end
      pattern = Regexp.new(/[^\\/#\?]+?/)
      if @api_client.config.client_side_validation && integration_id !~ pattern
        fail ArgumentError, "invalid value for 'integration_id' when calling IntegrationsApi.patch_post_connector, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/integrations/{integrationId}/status'.sub('{' + 'integrationId' + '}', CGI.escape(integration_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html; charset=utf-8'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end
      header_params[:'x-api-key'] = x_api_key

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'patch_connector_req_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'PatchConnectorResDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"IntegrationsApi.patch_post_connector",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#patch_post_connector\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Integrations = IntegrationsApi::new
end
