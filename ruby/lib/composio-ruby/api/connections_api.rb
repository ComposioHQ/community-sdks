=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

require 'cgi'

module ComposioRuby
  class ConnectionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete connection
    #
    # @param x_api_key [String] 
    # @param connected_account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_connection(x_api_key:, connected_account_id:, extra: {})
      delete_connection_with_http_info_impl(x_api_key, connected_account_id, extra)
      nil
    end

    # Delete connection
    #
    # @param x_api_key [String] 
    # @param connected_account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_connection_with_http_info(x_api_key:, connected_account_id:, extra: {})
      delete_connection_with_http_info_impl(x_api_key, connected_account_id, extra)
    end

    # Delete connection
    # @param x_api_key [String] 
    # @param connected_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    private def delete_connection_impl(x_api_key, connected_account_id, opts = {})
      delete_connection_with_http_info(x_api_key, connected_account_id, opts)
      nil
    end

    # Delete connection
    # @param x_api_key [String] 
    # @param connected_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is nil, status code, headers and response
    private def delete_connection_with_http_info_impl(x_api_key, connected_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.delete_connection ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling ConnectionsApi.delete_connection"
      end
      # verify the required parameter 'connected_account_id' is set
      if @api_client.config.client_side_validation && connected_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'connected_account_id' when calling ConnectionsApi.delete_connection"
      end
      pattern = Regexp.new(/[^\\/#\?]+?/)
      if @api_client.config.client_side_validation && connected_account_id !~ pattern
        fail ArgumentError, "invalid value for 'connected_account_id' when calling ConnectionsApi.delete_connection, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/connectedAccounts/{connectedAccountId}'.sub('{' + 'connectedAccountId' + '}', CGI.escape(connected_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'x-api-key'] = x_api_key

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ConnectionsApi.delete_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#delete_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Disable connection
    #
    # @param x_api_key [String] 
    # @param connected_account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def disable_connection(x_api_key:, connected_account_id:, extra: {})
      api_response = disable_connection_with_http_info_impl(x_api_key, connected_account_id, extra)
      api_response.data
    end

    # Disable connection
    #
    # @param x_api_key [String] 
    # @param connected_account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def disable_connection_with_http_info(x_api_key:, connected_account_id:, extra: {})
      disable_connection_with_http_info_impl(x_api_key, connected_account_id, extra)
    end

    # Disable connection
    # @param x_api_key [String] 
    # @param connected_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [ToggleConnectedAccountResponseDTO]
    private def disable_connection_impl(x_api_key, connected_account_id, opts = {})
      data, _status_code, _headers = disable_connection_with_http_info(x_api_key, connected_account_id, opts)
      data
    end

    # Disable connection
    # @param x_api_key [String] 
    # @param connected_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is ToggleConnectedAccountResponseDTO, status code, headers and response
    private def disable_connection_with_http_info_impl(x_api_key, connected_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.disable_connection ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling ConnectionsApi.disable_connection"
      end
      # verify the required parameter 'connected_account_id' is set
      if @api_client.config.client_side_validation && connected_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'connected_account_id' when calling ConnectionsApi.disable_connection"
      end
      pattern = Regexp.new(/[^\\/#\?]+?/)
      if @api_client.config.client_side_validation && connected_account_id !~ pattern
        fail ArgumentError, "invalid value for 'connected_account_id' when calling ConnectionsApi.disable_connection, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/connectedAccounts/{connectedAccountId}/disable'.sub('{' + 'connectedAccountId' + '}', CGI.escape(connected_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'x-api-key'] = x_api_key

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ToggleConnectedAccountResponseDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ConnectionsApi.disable_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#disable_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Enable connection
    #
    # @param x_api_key [String] 
    # @param connected_account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def enable_connection(x_api_key:, connected_account_id:, extra: {})
      api_response = enable_connection_with_http_info_impl(x_api_key, connected_account_id, extra)
      api_response.data
    end

    # Enable connection
    #
    # @param x_api_key [String] 
    # @param connected_account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def enable_connection_with_http_info(x_api_key:, connected_account_id:, extra: {})
      enable_connection_with_http_info_impl(x_api_key, connected_account_id, extra)
    end

    # Enable connection
    # @param x_api_key [String] 
    # @param connected_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [ToggleConnectedAccountResponseDTO]
    private def enable_connection_impl(x_api_key, connected_account_id, opts = {})
      data, _status_code, _headers = enable_connection_with_http_info(x_api_key, connected_account_id, opts)
      data
    end

    # Enable connection
    # @param x_api_key [String] 
    # @param connected_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is ToggleConnectedAccountResponseDTO, status code, headers and response
    private def enable_connection_with_http_info_impl(x_api_key, connected_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.enable_connection ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling ConnectionsApi.enable_connection"
      end
      # verify the required parameter 'connected_account_id' is set
      if @api_client.config.client_side_validation && connected_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'connected_account_id' when calling ConnectionsApi.enable_connection"
      end
      pattern = Regexp.new(/[^\\/#\?]+?/)
      if @api_client.config.client_side_validation && connected_account_id !~ pattern
        fail ArgumentError, "invalid value for 'connected_account_id' when calling ConnectionsApi.enable_connection, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/connectedAccounts/{connectedAccountId}/enable'.sub('{' + 'connectedAccountId' + '}', CGI.escape(connected_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'x-api-key'] = x_api_key

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ToggleConnectedAccountResponseDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ConnectionsApi.enable_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#enable_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get connection
    #
    # @param x_api_key [String] 
    # @param connected_account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_connection(x_api_key:, connected_account_id:, extra: {})
      api_response = get_connection_with_http_info_impl(x_api_key, connected_account_id, extra)
      api_response.data
    end

    # Get connection
    #
    # @param x_api_key [String] 
    # @param connected_account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_connection_with_http_info(x_api_key:, connected_account_id:, extra: {})
      get_connection_with_http_info_impl(x_api_key, connected_account_id, extra)
    end

    # Get connection
    # @param x_api_key [String] 
    # @param connected_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [ConnectedAccountResponseDTO]
    private def get_connection_impl(x_api_key, connected_account_id, opts = {})
      data, _status_code, _headers = get_connection_with_http_info(x_api_key, connected_account_id, opts)
      data
    end

    # Get connection
    # @param x_api_key [String] 
    # @param connected_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is ConnectedAccountResponseDTO, status code, headers and response
    private def get_connection_with_http_info_impl(x_api_key, connected_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.get_connection ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling ConnectionsApi.get_connection"
      end
      # verify the required parameter 'connected_account_id' is set
      if @api_client.config.client_side_validation && connected_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'connected_account_id' when calling ConnectionsApi.get_connection"
      end
      pattern = Regexp.new(/[^\\/#\?]+?/)
      if @api_client.config.client_side_validation && connected_account_id !~ pattern
        fail ArgumentError, "invalid value for 'connected_account_id' when calling ConnectionsApi.get_connection, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/connectedAccounts/{connectedAccountId}'.sub('{' + 'connectedAccountId' + '}', CGI.escape(connected_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'x-api-key'] = x_api_key

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ConnectedAccountResponseDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ConnectionsApi.get_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#get_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get connections
    #
    # @param x_api_key [String] 
    # @param page [Float] 
    # @param page_size [Float] 
    # @param app_names [Object] 
    # @param integration_id [String] 
    # @param connection_id [String] 
    # @param user_uuid [String] 
    # @param show_active_only [Boolean] 
    # @param status [String] 
    # @param show_disabled [Boolean] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_connections(x_api_key:, page: SENTINEL, page_size: SENTINEL, app_names: SENTINEL, integration_id: SENTINEL, connection_id: SENTINEL, user_uuid: SENTINEL, show_active_only: SENTINEL, status: SENTINEL, show_disabled: SENTINEL, extra: {})
      extra[:page] = page if page != SENTINEL
      extra[:page_size] = page_size if page_size != SENTINEL
      extra[:app_names] = app_names if app_names != SENTINEL
      extra[:integration_id] = integration_id if integration_id != SENTINEL
      extra[:connection_id] = connection_id if connection_id != SENTINEL
      extra[:user_uuid] = user_uuid if user_uuid != SENTINEL
      extra[:show_active_only] = show_active_only if show_active_only != SENTINEL
      extra[:status] = status if status != SENTINEL
      extra[:show_disabled] = show_disabled if show_disabled != SENTINEL
      api_response = get_connections_with_http_info_impl(x_api_key, extra)
      api_response.data
    end

    # Get connections
    #
    # @param x_api_key [String] 
    # @param page [Float] 
    # @param page_size [Float] 
    # @param app_names [Object] 
    # @param integration_id [String] 
    # @param connection_id [String] 
    # @param user_uuid [String] 
    # @param show_active_only [Boolean] 
    # @param status [String] 
    # @param show_disabled [Boolean] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_connections_with_http_info(x_api_key:, page: SENTINEL, page_size: SENTINEL, app_names: SENTINEL, integration_id: SENTINEL, connection_id: SENTINEL, user_uuid: SENTINEL, show_active_only: SENTINEL, status: SENTINEL, show_disabled: SENTINEL, extra: {})
      extra[:page] = page if page != SENTINEL
      extra[:page_size] = page_size if page_size != SENTINEL
      extra[:app_names] = app_names if app_names != SENTINEL
      extra[:integration_id] = integration_id if integration_id != SENTINEL
      extra[:connection_id] = connection_id if connection_id != SENTINEL
      extra[:user_uuid] = user_uuid if user_uuid != SENTINEL
      extra[:show_active_only] = show_active_only if show_active_only != SENTINEL
      extra[:status] = status if status != SENTINEL
      extra[:show_disabled] = show_disabled if show_disabled != SENTINEL
      get_connections_with_http_info_impl(x_api_key, extra)
    end

    # Get connections
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :page 
    # @option opts [Float] :page_size 
    # @option opts [Object] :app_names 
    # @option opts [String] :integration_id 
    # @option opts [String] :connection_id 
    # @option opts [String] :user_uuid 
    # @option opts [Boolean] :show_active_only 
    # @option opts [String] :status 
    # @option opts [Boolean] :show_disabled 
    # @return [GetConnectionsResponseDto]
    private def get_connections_impl(x_api_key, opts = {})
      data, _status_code, _headers = get_connections_with_http_info(x_api_key, opts)
      data
    end

    # Get connections
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :page 
    # @option opts [Float] :page_size 
    # @option opts [Object] :app_names 
    # @option opts [String] :integration_id 
    # @option opts [String] :connection_id 
    # @option opts [String] :user_uuid 
    # @option opts [Boolean] :show_active_only 
    # @option opts [String] :status 
    # @option opts [Boolean] :show_disabled 
    # @return [APIResponse] data is GetConnectionsResponseDto, status code, headers and response
    private def get_connections_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.get_connections ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling ConnectionsApi.get_connections"
      end
      # resource path
      local_var_path = '/api/v1/connectedAccounts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'appNames'] = opts[:'app_names'] if !opts[:'app_names'].nil?
      query_params[:'integrationId'] = opts[:'integration_id'] if !opts[:'integration_id'].nil?
      query_params[:'connectionId'] = opts[:'connection_id'] if !opts[:'connection_id'].nil?
      query_params[:'user_uuid'] = opts[:'user_uuid'] if !opts[:'user_uuid'].nil?
      query_params[:'showActiveOnly'] = opts[:'show_active_only'] if !opts[:'show_active_only'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'showDisabled'] = opts[:'show_disabled'] if !opts[:'show_disabled'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'x-api-key'] = x_api_key

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetConnectionsResponseDto'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ConnectionsApi.get_connections",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#get_connections\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Initiate connection
    #
    # @param integration_id [String] 
    # @param x_api_key [String] 
    # @param data [String] 
    # @param redirect_uri [String] 
    # @param user_uuid [String] 
    # @param body [InitiateConnectionPayloadDto] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def initiate_connection(integration_id:, x_api_key:, data: SENTINEL, redirect_uri: SENTINEL, user_uuid: SENTINEL, extra: {})
      _body = {}
      _body[:data] = data if data != SENTINEL
      _body[:integrationId] = integration_id if integration_id != SENTINEL
      _body[:redirectUri] = redirect_uri if redirect_uri != SENTINEL
      _body[:userUuid] = user_uuid if user_uuid != SENTINEL
      extra[:initiate_connection_payload_dto] = _body if !_body.empty?
      api_response = initiate_connection_with_http_info_impl(x_api_key, extra)
      api_response.data
    end

    # Initiate connection
    #
    # @param integration_id [String] 
    # @param x_api_key [String] 
    # @param data [String] 
    # @param redirect_uri [String] 
    # @param user_uuid [String] 
    # @param body [InitiateConnectionPayloadDto] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def initiate_connection_with_http_info(integration_id:, x_api_key:, data: SENTINEL, redirect_uri: SENTINEL, user_uuid: SENTINEL, extra: {})
      _body = {}
      _body[:data] = data if data != SENTINEL
      _body[:integrationId] = integration_id if integration_id != SENTINEL
      _body[:redirectUri] = redirect_uri if redirect_uri != SENTINEL
      _body[:userUuid] = user_uuid if user_uuid != SENTINEL
      extra[:initiate_connection_payload_dto] = _body if !_body.empty?
      initiate_connection_with_http_info_impl(x_api_key, extra)
    end

    # Initiate connection
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [InitiateConnectionPayloadDto] :initiate_connection_payload_dto InitiateConnectionPayloadDto
    # @return [InitiateConnectionResponse]
    private def initiate_connection_impl(x_api_key, opts = {})
      data, _status_code, _headers = initiate_connection_with_http_info(x_api_key, opts)
      data
    end

    # Initiate connection
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [InitiateConnectionPayloadDto] :initiate_connection_payload_dto InitiateConnectionPayloadDto
    # @return [APIResponse] data is InitiateConnectionResponse, status code, headers and response
    private def initiate_connection_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.initiate_connection ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling ConnectionsApi.initiate_connection"
      end
      # resource path
      local_var_path = '/api/v1/connectedAccounts'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end
      header_params[:'x-api-key'] = x_api_key

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'initiate_connection_payload_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'InitiateConnectionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ConnectionsApi.initiate_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#initiate_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Connections = ConnectionsApi::new
end
