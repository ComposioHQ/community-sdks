=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

require 'cgi'

module ComposioRuby
  class TriggersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Set callback url
    #
    # Sets a universal callback URL for the client.
    #
    # @param callback_url [String] The callback URL
    # @param x_api_key [String] 
    # @param body [SetCallbackUrlBodyDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def callback_url(callback_url:, x_api_key:, extra: {})
      _body = {}
      _body[:callbackURL] = callback_url if callback_url != SENTINEL
      extra[:set_callback_url_body_dto] = _body if !_body.empty?
      api_response = callback_url_with_http_info_impl(x_api_key, extra)
      api_response.data
    end

    # Set callback url
    #
    # Sets a universal callback URL for the client.
    #
    # @param callback_url [String] The callback URL
    # @param x_api_key [String] 
    # @param body [SetCallbackUrlBodyDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def callback_url_with_http_info(callback_url:, x_api_key:, extra: {})
      _body = {}
      _body[:callbackURL] = callback_url if callback_url != SENTINEL
      extra[:set_callback_url_body_dto] = _body if !_body.empty?
      callback_url_with_http_info_impl(x_api_key, extra)
    end

    # Set callback url
    # Sets a universal callback URL for the client.
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [SetCallbackUrlBodyDTO] :set_callback_url_body_dto SetCallbackUrlBodyDTO
    # @return [TriggerResponseDTO]
    private def callback_url_impl(x_api_key, opts = {})
      data, _status_code, _headers = callback_url_with_http_info(x_api_key, opts)
      data
    end

    # Set callback url
    # Sets a universal callback URL for the client.
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [SetCallbackUrlBodyDTO] :set_callback_url_body_dto SetCallbackUrlBodyDTO
    # @return [APIResponse] data is TriggerResponseDTO, status code, headers and response
    private def callback_url_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TriggersApi.callback_url ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling TriggersApi.callback_url"
      end
      # resource path
      local_var_path = '/api/v1/triggers/set_callback_url'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'set_callback_url_body_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'TriggerResponseDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TriggersApi.callback_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TriggersApi#callback_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Delete trigger
    #
    # Deletes a specified trigger instance.
    #
    # @param x_api_key [String] 
    # @param trigger_instance_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_trigger(x_api_key:, trigger_instance_id:, extra: {})
      api_response = delete_trigger_with_http_info_impl(x_api_key, trigger_instance_id, extra)
      api_response.data
    end

    # Delete trigger
    #
    # Deletes a specified trigger instance.
    #
    # @param x_api_key [String] 
    # @param trigger_instance_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_trigger_with_http_info(x_api_key:, trigger_instance_id:, extra: {})
      delete_trigger_with_http_info_impl(x_api_key, trigger_instance_id, extra)
    end

    # Delete trigger
    # Deletes a specified trigger instance.
    # @param x_api_key [String] 
    # @param trigger_instance_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [DeleteRowAPIDTO]
    private def delete_trigger_impl(x_api_key, trigger_instance_id, opts = {})
      data, _status_code, _headers = delete_trigger_with_http_info(x_api_key, trigger_instance_id, opts)
      data
    end

    # Delete trigger
    # Deletes a specified trigger instance.
    # @param x_api_key [String] 
    # @param trigger_instance_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is DeleteRowAPIDTO, status code, headers and response
    private def delete_trigger_with_http_info_impl(x_api_key, trigger_instance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TriggersApi.delete_trigger ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling TriggersApi.delete_trigger"
      end
      # verify the required parameter 'trigger_instance_id' is set
      if @api_client.config.client_side_validation && trigger_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'trigger_instance_id' when calling TriggersApi.delete_trigger"
      end
      pattern = Regexp.new(/[^\\/#\?]+?/)
      if @api_client.config.client_side_validation && trigger_instance_id !~ pattern
        fail ArgumentError, "invalid value for 'trigger_instance_id' when calling TriggersApi.delete_trigger, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/triggers/instance/{triggerInstanceId}'.sub('{' + 'triggerInstanceId' + '}', CGI.escape(trigger_instance_id.to_s))

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
        :operation => :"TriggersApi.delete_trigger",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TriggersApi#delete_trigger\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Disable trigger
    #
    # Disables a specified trigger instance.
    #
    # @param x_api_key [String] 
    # @param trigger_instance_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def disable_trigger(x_api_key:, trigger_instance_id:, extra: {})
      api_response = disable_trigger_with_http_info_impl(x_api_key, trigger_instance_id, extra)
      api_response.data
    end

    # Disable trigger
    #
    # Disables a specified trigger instance.
    #
    # @param x_api_key [String] 
    # @param trigger_instance_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def disable_trigger_with_http_info(x_api_key:, trigger_instance_id:, extra: {})
      disable_trigger_with_http_info_impl(x_api_key, trigger_instance_id, extra)
    end

    # Disable trigger
    # Disables a specified trigger instance.
    # @param x_api_key [String] 
    # @param trigger_instance_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [TriggerResponseDTO]
    private def disable_trigger_impl(x_api_key, trigger_instance_id, opts = {})
      data, _status_code, _headers = disable_trigger_with_http_info(x_api_key, trigger_instance_id, opts)
      data
    end

    # Disable trigger
    # Disables a specified trigger instance.
    # @param x_api_key [String] 
    # @param trigger_instance_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is TriggerResponseDTO, status code, headers and response
    private def disable_trigger_with_http_info_impl(x_api_key, trigger_instance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TriggersApi.disable_trigger ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling TriggersApi.disable_trigger"
      end
      # verify the required parameter 'trigger_instance_id' is set
      if @api_client.config.client_side_validation && trigger_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'trigger_instance_id' when calling TriggersApi.disable_trigger"
      end
      pattern = Regexp.new(/[^\\/#\?]+?/)
      if @api_client.config.client_side_validation && trigger_instance_id !~ pattern
        fail ArgumentError, "invalid value for 'trigger_instance_id' when calling TriggersApi.disable_trigger, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/triggers/disable/{triggerInstanceId}'.sub('{' + 'triggerInstanceId' + '}', CGI.escape(trigger_instance_id.to_s))

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
      return_type = opts[:debug_return_type] || 'TriggerResponseDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TriggersApi.disable_trigger",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TriggersApi#disable_trigger\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Enable trigger
    #
    # Enables a trigger for a connected account and specific trigger name.
    #
    # @param trigger_config [Object] The trigger configuration
    # @param x_api_key [String] 
    # @param connected_account_id [String] 
    # @param trigger_name [String] 
    # @param body [EnableTriggerBodyDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def enable_trigger(trigger_config:, x_api_key:, connected_account_id:, trigger_name:, extra: {})
      _body = {}
      _body[:triggerConfig] = trigger_config if trigger_config != SENTINEL
      extra[:enable_trigger_body_dto] = _body if !_body.empty?
      api_response = enable_trigger_with_http_info_impl(x_api_key, connected_account_id, trigger_name, extra)
      api_response.data
    end

    # Enable trigger
    #
    # Enables a trigger for a connected account and specific trigger name.
    #
    # @param trigger_config [Object] The trigger configuration
    # @param x_api_key [String] 
    # @param connected_account_id [String] 
    # @param trigger_name [String] 
    # @param body [EnableTriggerBodyDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def enable_trigger_with_http_info(trigger_config:, x_api_key:, connected_account_id:, trigger_name:, extra: {})
      _body = {}
      _body[:triggerConfig] = trigger_config if trigger_config != SENTINEL
      extra[:enable_trigger_body_dto] = _body if !_body.empty?
      enable_trigger_with_http_info_impl(x_api_key, connected_account_id, trigger_name, extra)
    end

    # Enable trigger
    # Enables a trigger for a connected account and specific trigger name.
    # @param x_api_key [String] 
    # @param connected_account_id [String] 
    # @param trigger_name [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [EnableTriggerBodyDTO] :enable_trigger_body_dto EnableTriggerBodyDTO
    # @return [TriggerResponseDTO]
    private def enable_trigger_impl(x_api_key, connected_account_id, trigger_name, opts = {})
      data, _status_code, _headers = enable_trigger_with_http_info(x_api_key, connected_account_id, trigger_name, opts)
      data
    end

    # Enable trigger
    # Enables a trigger for a connected account and specific trigger name.
    # @param x_api_key [String] 
    # @param connected_account_id [String] 
    # @param trigger_name [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [EnableTriggerBodyDTO] :enable_trigger_body_dto EnableTriggerBodyDTO
    # @return [APIResponse] data is TriggerResponseDTO, status code, headers and response
    private def enable_trigger_with_http_info_impl(x_api_key, connected_account_id, trigger_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TriggersApi.enable_trigger ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling TriggersApi.enable_trigger"
      end
      # verify the required parameter 'connected_account_id' is set
      if @api_client.config.client_side_validation && connected_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'connected_account_id' when calling TriggersApi.enable_trigger"
      end
      pattern = Regexp.new(/[^\\/#\?]+?/)
      if @api_client.config.client_side_validation && connected_account_id !~ pattern
        fail ArgumentError, "invalid value for 'connected_account_id' when calling TriggersApi.enable_trigger, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'trigger_name' is set
      if @api_client.config.client_side_validation && trigger_name.nil?
        fail ArgumentError, "Missing the required parameter 'trigger_name' when calling TriggersApi.enable_trigger"
      end
      pattern = Regexp.new(/[^\\/#\?]+?/)
      if @api_client.config.client_side_validation && trigger_name !~ pattern
        fail ArgumentError, "invalid value for 'trigger_name' when calling TriggersApi.enable_trigger, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/triggers/enable/{connectedAccountId}/{triggerName}'.sub('{' + 'connectedAccountId' + '}', CGI.escape(connected_account_id.to_s)).sub('{' + 'triggerName' + '}', CGI.escape(trigger_name.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'enable_trigger_body_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'TriggerResponseDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TriggersApi.enable_trigger",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TriggersApi#enable_trigger\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get active triggers
    #
    # Lists active triggers based on query parameters.
    #
    # @param x_api_key [String] 
    # @param connected_account_ids [String] 
    # @param integration_ids [String] 
    # @param trigger_ids [String] 
    # @param trigger_names [String] 
    # @param page [Float] 
    # @param limit [Float] 
    # @param show_disabled [Boolean] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_active_triggers(x_api_key:, connected_account_ids: SENTINEL, integration_ids: SENTINEL, trigger_ids: SENTINEL, trigger_names: SENTINEL, page: SENTINEL, limit: SENTINEL, show_disabled: SENTINEL, extra: {})
      extra[:connected_account_ids] = connected_account_ids if connected_account_ids != SENTINEL
      extra[:integration_ids] = integration_ids if integration_ids != SENTINEL
      extra[:trigger_ids] = trigger_ids if trigger_ids != SENTINEL
      extra[:trigger_names] = trigger_names if trigger_names != SENTINEL
      extra[:page] = page if page != SENTINEL
      extra[:limit] = limit if limit != SENTINEL
      extra[:show_disabled] = show_disabled if show_disabled != SENTINEL
      api_response = get_active_triggers_with_http_info_impl(x_api_key, extra)
      api_response.data
    end

    # Get active triggers
    #
    # Lists active triggers based on query parameters.
    #
    # @param x_api_key [String] 
    # @param connected_account_ids [String] 
    # @param integration_ids [String] 
    # @param trigger_ids [String] 
    # @param trigger_names [String] 
    # @param page [Float] 
    # @param limit [Float] 
    # @param show_disabled [Boolean] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_active_triggers_with_http_info(x_api_key:, connected_account_ids: SENTINEL, integration_ids: SENTINEL, trigger_ids: SENTINEL, trigger_names: SENTINEL, page: SENTINEL, limit: SENTINEL, show_disabled: SENTINEL, extra: {})
      extra[:connected_account_ids] = connected_account_ids if connected_account_ids != SENTINEL
      extra[:integration_ids] = integration_ids if integration_ids != SENTINEL
      extra[:trigger_ids] = trigger_ids if trigger_ids != SENTINEL
      extra[:trigger_names] = trigger_names if trigger_names != SENTINEL
      extra[:page] = page if page != SENTINEL
      extra[:limit] = limit if limit != SENTINEL
      extra[:show_disabled] = show_disabled if show_disabled != SENTINEL
      get_active_triggers_with_http_info_impl(x_api_key, extra)
    end

    # Get active triggers
    # Lists active triggers based on query parameters.
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :connected_account_ids 
    # @option opts [String] :integration_ids 
    # @option opts [String] :trigger_ids 
    # @option opts [String] :trigger_names 
    # @option opts [Float] :page 
    # @option opts [Float] :limit 
    # @option opts [Boolean] :show_disabled 
    # @return [ActiveTriggersResDTO]
    private def get_active_triggers_impl(x_api_key, opts = {})
      data, _status_code, _headers = get_active_triggers_with_http_info(x_api_key, opts)
      data
    end

    # Get active triggers
    # Lists active triggers based on query parameters.
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :connected_account_ids 
    # @option opts [String] :integration_ids 
    # @option opts [String] :trigger_ids 
    # @option opts [String] :trigger_names 
    # @option opts [Float] :page 
    # @option opts [Float] :limit 
    # @option opts [Boolean] :show_disabled 
    # @return [APIResponse] data is ActiveTriggersResDTO, status code, headers and response
    private def get_active_triggers_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TriggersApi.get_active_triggers ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling TriggersApi.get_active_triggers"
      end
      # resource path
      local_var_path = '/api/v1/triggers/active_triggers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'connectedAccountIds'] = opts[:'connected_account_ids'] if !opts[:'connected_account_ids'].nil?
      query_params[:'integrationIds'] = opts[:'integration_ids'] if !opts[:'integration_ids'].nil?
      query_params[:'triggerIds'] = opts[:'trigger_ids'] if !opts[:'trigger_ids'].nil?
      query_params[:'triggerNames'] = opts[:'trigger_names'] if !opts[:'trigger_names'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'showDisabled'] = opts[:'show_disabled'] if !opts[:'show_disabled'].nil?

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
      return_type = opts[:debug_return_type] || 'ActiveTriggersResDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TriggersApi.get_active_triggers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TriggersApi#get_active_triggers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get logs
    #
    # Fetches logs based on connection and integration details.
    #
    # @param x_api_key [String] 
    # @param connection_id [String] 
    # @param integration_id [String] 
    # @param page [Float] 
    # @param limit [Float] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_logs(x_api_key:, connection_id: SENTINEL, integration_id: SENTINEL, page: SENTINEL, limit: SENTINEL, extra: {})
      extra[:connection_id] = connection_id if connection_id != SENTINEL
      extra[:integration_id] = integration_id if integration_id != SENTINEL
      extra[:page] = page if page != SENTINEL
      extra[:limit] = limit if limit != SENTINEL
      api_response = get_logs_with_http_info_impl(x_api_key, extra)
      api_response.data
    end

    # Get logs
    #
    # Fetches logs based on connection and integration details.
    #
    # @param x_api_key [String] 
    # @param connection_id [String] 
    # @param integration_id [String] 
    # @param page [Float] 
    # @param limit [Float] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_logs_with_http_info(x_api_key:, connection_id: SENTINEL, integration_id: SENTINEL, page: SENTINEL, limit: SENTINEL, extra: {})
      extra[:connection_id] = connection_id if connection_id != SENTINEL
      extra[:integration_id] = integration_id if integration_id != SENTINEL
      extra[:page] = page if page != SENTINEL
      extra[:limit] = limit if limit != SENTINEL
      get_logs_with_http_info_impl(x_api_key, extra)
    end

    # Get logs
    # Fetches logs based on connection and integration details.
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :connection_id 
    # @option opts [String] :integration_id 
    # @option opts [Float] :page 
    # @option opts [Float] :limit 
    # @return [TriggerLogsResDTO]
    private def get_logs_impl(x_api_key, opts = {})
      data, _status_code, _headers = get_logs_with_http_info(x_api_key, opts)
      data
    end

    # Get logs
    # Fetches logs based on connection and integration details.
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :connection_id 
    # @option opts [String] :integration_id 
    # @option opts [Float] :page 
    # @option opts [Float] :limit 
    # @return [APIResponse] data is TriggerLogsResDTO, status code, headers and response
    private def get_logs_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TriggersApi.get_logs ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling TriggersApi.get_logs"
      end
      # resource path
      local_var_path = '/api/v1/triggers/logs'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'connectionId'] = opts[:'connection_id'] if !opts[:'connection_id'].nil?
      query_params[:'integrationId'] = opts[:'integration_id'] if !opts[:'integration_id'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

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
      return_type = opts[:debug_return_type] || 'TriggerLogsResDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TriggersApi.get_logs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TriggersApi#get_logs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get trigger
    #
    # Retrieves a specific trigger by its ID.
    #
    # @param x_api_key [String] 
    # @param trigger_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_trigger(x_api_key:, trigger_id:, extra: {})
      get_trigger_with_http_info_impl(x_api_key, trigger_id, extra)
      nil
    end

    # Get trigger
    #
    # Retrieves a specific trigger by its ID.
    #
    # @param x_api_key [String] 
    # @param trigger_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_trigger_with_http_info(x_api_key:, trigger_id:, extra: {})
      get_trigger_with_http_info_impl(x_api_key, trigger_id, extra)
    end

    # Get trigger
    # Retrieves a specific trigger by its ID.
    # @param x_api_key [String] 
    # @param trigger_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    private def get_trigger_impl(x_api_key, trigger_id, opts = {})
      get_trigger_with_http_info(x_api_key, trigger_id, opts)
      nil
    end

    # Get trigger
    # Retrieves a specific trigger by its ID.
    # @param x_api_key [String] 
    # @param trigger_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is nil, status code, headers and response
    private def get_trigger_with_http_info_impl(x_api_key, trigger_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TriggersApi.get_trigger ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling TriggersApi.get_trigger"
      end
      # verify the required parameter 'trigger_id' is set
      if @api_client.config.client_side_validation && trigger_id.nil?
        fail ArgumentError, "Missing the required parameter 'trigger_id' when calling TriggersApi.get_trigger"
      end
      pattern = Regexp.new(/[^\\/#\?]+?/)
      if @api_client.config.client_side_validation && trigger_id !~ pattern
        fail ArgumentError, "invalid value for 'trigger_id' when calling TriggersApi.get_trigger, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/triggers/get/{triggerId}'.sub('{' + 'triggerId' + '}', CGI.escape(trigger_id.to_s))

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TriggersApi.get_trigger",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TriggersApi#get_trigger\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get trigger info
    #
    # Get Trigger Info
    #
    # @param x_api_key [String] 
    # @param trigger_name [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_trigger_info_v2(x_api_key:, trigger_name:, extra: {})
      api_response = get_trigger_info_v2_with_http_info_impl(x_api_key, trigger_name, extra)
      api_response.data
    end

    # Get trigger info
    #
    # Get Trigger Info
    #
    # @param x_api_key [String] 
    # @param trigger_name [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_trigger_info_v2_with_http_info(x_api_key:, trigger_name:, extra: {})
      get_trigger_info_v2_with_http_info_impl(x_api_key, trigger_name, extra)
    end

    # Get trigger info
    # Get Trigger Info
    # @param x_api_key [String] 
    # @param trigger_name [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<SingleTriggerResDTO>]
    private def get_trigger_info_v2_impl(x_api_key, trigger_name, opts = {})
      data, _status_code, _headers = get_trigger_info_v2_with_http_info(x_api_key, trigger_name, opts)
      data
    end

    # Get trigger info
    # Get Trigger Info
    # @param x_api_key [String] 
    # @param trigger_name [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Array<SingleTriggerResDTO>, status code, headers and response
    private def get_trigger_info_v2_with_http_info_impl(x_api_key, trigger_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TriggersApi.get_trigger_info_v2 ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling TriggersApi.get_trigger_info_v2"
      end
      # verify the required parameter 'trigger_name' is set
      if @api_client.config.client_side_validation && trigger_name.nil?
        fail ArgumentError, "Missing the required parameter 'trigger_name' when calling TriggersApi.get_trigger_info_v2"
      end
      pattern = Regexp.new(/[^\\/#\?]+?/)
      if @api_client.config.client_side_validation && trigger_name !~ pattern
        fail ArgumentError, "invalid value for 'trigger_name' when calling TriggersApi.get_trigger_info_v2, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v2/triggers/{triggerName}'.sub('{' + 'triggerName' + '}', CGI.escape(trigger_name.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<SingleTriggerResDTO>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TriggersApi.get_trigger_info_v2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TriggersApi#get_trigger_info_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get webhook url
    #
    # Retrieves the universal callback URL set for the client.
    #
    # @param x_api_key [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_webhook_url(x_api_key:, extra: {})
      api_response = get_webhook_url_with_http_info_impl(x_api_key, extra)
      api_response.data
    end

    # Get webhook url
    #
    # Retrieves the universal callback URL set for the client.
    #
    # @param x_api_key [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_webhook_url_with_http_info(x_api_key:, extra: {})
      get_webhook_url_with_http_info_impl(x_api_key, extra)
    end

    # Get webhook url
    # Retrieves the universal callback URL set for the client.
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [WebhookURLResponseDTO]
    private def get_webhook_url_impl(x_api_key, opts = {})
      data, _status_code, _headers = get_webhook_url_with_http_info(x_api_key, opts)
      data
    end

    # Get webhook url
    # Retrieves the universal callback URL set for the client.
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is WebhookURLResponseDTO, status code, headers and response
    private def get_webhook_url_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TriggersApi.get_webhook_url ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling TriggersApi.get_webhook_url"
      end
      # resource path
      local_var_path = '/api/v1/triggers/callback_url'

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
      return_type = opts[:debug_return_type] || 'WebhookURLResponseDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TriggersApi.get_webhook_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TriggersApi#get_webhook_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Handle pusher events
    #
    # @param x_api_key [String] 
    # @param body [Object] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def handle_pusher_events(x_api_key:, body:: SENTINEL, extra: {})
      extra[:body] = body if body != SENTINEL
      handle_pusher_events_with_http_info_impl(x_api_key, extra)
      nil
    end

    # Handle pusher events
    #
    # @param x_api_key [String] 
    # @param body [Object] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def handle_pusher_events_with_http_info(x_api_key:, body:: SENTINEL, extra: {})
      extra[:body] = body if body != SENTINEL
      handle_pusher_events_with_http_info_impl(x_api_key, extra)
    end

    # Handle pusher events
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :body 
    # @return [nil]
    private def handle_pusher_events_impl(x_api_key, opts = {})
      handle_pusher_events_with_http_info(x_api_key, opts)
      nil
    end

    # Handle pusher events
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :body 
    # @return [APIResponse] data is nil, status code, headers and response
    private def handle_pusher_events_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TriggersApi.handle_pusher_events ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling TriggersApi.handle_pusher_events"
      end
      # resource path
      local_var_path = '/api/v1/triggers/pusher'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TriggersApi.handle_pusher_events",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TriggersApi#handle_pusher_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Handle trigger
    #
    # @param x_api_key [String] 
    # @param app_name [String] 
    # @param client_id [String] 
    # @param body [Object] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def handle_trigger(x_api_key:, app_name:, client_id:, body:: SENTINEL, extra: {})
      extra[:body] = body if body != SENTINEL
      handle_trigger_with_http_info_impl(x_api_key, app_name, client_id, extra)
      nil
    end

    # Handle trigger
    #
    # @param x_api_key [String] 
    # @param app_name [String] 
    # @param client_id [String] 
    # @param body [Object] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def handle_trigger_with_http_info(x_api_key:, app_name:, client_id:, body:: SENTINEL, extra: {})
      extra[:body] = body if body != SENTINEL
      handle_trigger_with_http_info_impl(x_api_key, app_name, client_id, extra)
    end

    # Handle trigger
    # @param x_api_key [String] 
    # @param app_name [String] 
    # @param client_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :body 
    # @return [nil]
    private def handle_trigger_impl(x_api_key, app_name, client_id, opts = {})
      handle_trigger_with_http_info(x_api_key, app_name, client_id, opts)
      nil
    end

    # Handle trigger
    # @param x_api_key [String] 
    # @param app_name [String] 
    # @param client_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :body 
    # @return [APIResponse] data is nil, status code, headers and response
    private def handle_trigger_with_http_info_impl(x_api_key, app_name, client_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TriggersApi.handle_trigger ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling TriggersApi.handle_trigger"
      end
      # verify the required parameter 'app_name' is set
      if @api_client.config.client_side_validation && app_name.nil?
        fail ArgumentError, "Missing the required parameter 'app_name' when calling TriggersApi.handle_trigger"
      end
      pattern = Regexp.new(/[^\\/#\?]+?/)
      if @api_client.config.client_side_validation && app_name !~ pattern
        fail ArgumentError, "invalid value for 'app_name' when calling TriggersApi.handle_trigger, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling TriggersApi.handle_trigger"
      end
      pattern = Regexp.new(/[^\\/#\?]+?/)
      if @api_client.config.client_side_validation && client_id !~ pattern
        fail ArgumentError, "invalid value for 'client_id' when calling TriggersApi.handle_trigger, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/triggers/handle/{appName}/{clientId}'.sub('{' + 'appName' + '}', CGI.escape(app_name.to_s)).sub('{' + 'clientId' + '}', CGI.escape(client_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TriggersApi.handle_trigger",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TriggersApi#handle_trigger\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # List triggers
    #
    # List triggers
    #
    # @param x_api_key [String] 
    # @param app_names [String] 
    # @param connected_account_ids [String] 
    # @param trigger_ids [String] 
    # @param show_enabled_only [Boolean] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_triggers(x_api_key:, app_names: SENTINEL, connected_account_ids: SENTINEL, trigger_ids: SENTINEL, show_enabled_only: SENTINEL, extra: {})
      extra[:app_names] = app_names if app_names != SENTINEL
      extra[:connected_account_ids] = connected_account_ids if connected_account_ids != SENTINEL
      extra[:trigger_ids] = trigger_ids if trigger_ids != SENTINEL
      extra[:show_enabled_only] = show_enabled_only if show_enabled_only != SENTINEL
      api_response = list_triggers_with_http_info_impl(x_api_key, extra)
      api_response.data
    end

    # List triggers
    #
    # List triggers
    #
    # @param x_api_key [String] 
    # @param app_names [String] 
    # @param connected_account_ids [String] 
    # @param trigger_ids [String] 
    # @param show_enabled_only [Boolean] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_triggers_with_http_info(x_api_key:, app_names: SENTINEL, connected_account_ids: SENTINEL, trigger_ids: SENTINEL, show_enabled_only: SENTINEL, extra: {})
      extra[:app_names] = app_names if app_names != SENTINEL
      extra[:connected_account_ids] = connected_account_ids if connected_account_ids != SENTINEL
      extra[:trigger_ids] = trigger_ids if trigger_ids != SENTINEL
      extra[:show_enabled_only] = show_enabled_only if show_enabled_only != SENTINEL
      list_triggers_with_http_info_impl(x_api_key, extra)
    end

    # List triggers
    # List triggers
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :app_names 
    # @option opts [String] :connected_account_ids 
    # @option opts [String] :trigger_ids 
    # @option opts [Boolean] :show_enabled_only 
    # @return [Array<TriggerResDTO>]
    private def list_triggers_impl(x_api_key, opts = {})
      data, _status_code, _headers = list_triggers_with_http_info(x_api_key, opts)
      data
    end

    # List triggers
    # List triggers
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :app_names 
    # @option opts [String] :connected_account_ids 
    # @option opts [String] :trigger_ids 
    # @option opts [Boolean] :show_enabled_only 
    # @return [APIResponse] data is Array<TriggerResDTO>, status code, headers and response
    private def list_triggers_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TriggersApi.list_triggers ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling TriggersApi.list_triggers"
      end
      # resource path
      local_var_path = '/api/v1/triggers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'appNames'] = opts[:'app_names'] if !opts[:'app_names'].nil?
      query_params[:'connectedAccountIds'] = opts[:'connected_account_ids'] if !opts[:'connected_account_ids'].nil?
      query_params[:'triggerIds'] = opts[:'trigger_ids'] if !opts[:'trigger_ids'].nil?
      query_params[:'showEnabledOnly'] = opts[:'show_enabled_only'] if !opts[:'show_enabled_only'].nil?

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
      return_type = opts[:debug_return_type] || 'Array<TriggerResDTO>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TriggersApi.list_triggers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TriggersApi#list_triggers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Set callback url
    #
    # Sets a universal callback URL for the client.
    #
    # @param x_api_key [String] 
    # @param body [Object] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def set_callback_url(x_api_key:, body:: SENTINEL, extra: {})
      extra[:body] = body if body != SENTINEL
      set_callback_url_with_http_info_impl(x_api_key, extra)
      nil
    end

    # Set callback url
    #
    # Sets a universal callback URL for the client.
    #
    # @param x_api_key [String] 
    # @param body [Object] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def set_callback_url_with_http_info(x_api_key:, body:: SENTINEL, extra: {})
      extra[:body] = body if body != SENTINEL
      set_callback_url_with_http_info_impl(x_api_key, extra)
    end

    # Set callback url
    # Sets a universal callback URL for the client.
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :body 
    # @return [nil]
    private def set_callback_url_impl(x_api_key, opts = {})
      set_callback_url_with_http_info(x_api_key, opts)
      nil
    end

    # Set callback url
    # Sets a universal callback URL for the client.
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :body 
    # @return [APIResponse] data is nil, status code, headers and response
    private def set_callback_url_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TriggersApi.set_callback_url ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling TriggersApi.set_callback_url"
      end
      # resource path
      local_var_path = '/api/v1/triggers/setCallbackURL'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TriggersApi.set_callback_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TriggersApi#set_callback_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Switch post trigger instance status
    #
    # Switches the status of a trigger instance.
    #
    # @param enabled [Boolean] The new enabled status of the trigger
    # @param x_api_key [String] 
    # @param trigger_id [String] 
    # @param body [SwitchTriggerStatusBodyDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def switch_post_trigger_instance_status(enabled:, x_api_key:, trigger_id:, extra: {})
      _body = {}
      _body[:enabled] = enabled if enabled != SENTINEL
      extra[:switch_trigger_status_body_dto] = _body if !_body.empty?
      api_response = switch_post_trigger_instance_status_with_http_info_impl(x_api_key, trigger_id, extra)
      api_response.data
    end

    # Switch post trigger instance status
    #
    # Switches the status of a trigger instance.
    #
    # @param enabled [Boolean] The new enabled status of the trigger
    # @param x_api_key [String] 
    # @param trigger_id [String] 
    # @param body [SwitchTriggerStatusBodyDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def switch_post_trigger_instance_status_with_http_info(enabled:, x_api_key:, trigger_id:, extra: {})
      _body = {}
      _body[:enabled] = enabled if enabled != SENTINEL
      extra[:switch_trigger_status_body_dto] = _body if !_body.empty?
      switch_post_trigger_instance_status_with_http_info_impl(x_api_key, trigger_id, extra)
    end

    # Switch post trigger instance status
    # Switches the status of a trigger instance.
    # @param x_api_key [String] 
    # @param trigger_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [SwitchTriggerStatusBodyDTO] :switch_trigger_status_body_dto SwitchTriggerStatusBodyDTO
    # @return [TriggerResponseDTO]
    private def switch_post_trigger_instance_status_impl(x_api_key, trigger_id, opts = {})
      data, _status_code, _headers = switch_post_trigger_instance_status_with_http_info(x_api_key, trigger_id, opts)
      data
    end

    # Switch post trigger instance status
    # Switches the status of a trigger instance.
    # @param x_api_key [String] 
    # @param trigger_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [SwitchTriggerStatusBodyDTO] :switch_trigger_status_body_dto SwitchTriggerStatusBodyDTO
    # @return [APIResponse] data is TriggerResponseDTO, status code, headers and response
    private def switch_post_trigger_instance_status_with_http_info_impl(x_api_key, trigger_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TriggersApi.switch_post_trigger_instance_status ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling TriggersApi.switch_post_trigger_instance_status"
      end
      # verify the required parameter 'trigger_id' is set
      if @api_client.config.client_side_validation && trigger_id.nil?
        fail ArgumentError, "Missing the required parameter 'trigger_id' when calling TriggersApi.switch_post_trigger_instance_status"
      end
      pattern = Regexp.new(/[^\\/#\?]+?/)
      if @api_client.config.client_side_validation && trigger_id !~ pattern
        fail ArgumentError, "invalid value for 'trigger_id' when calling TriggersApi.switch_post_trigger_instance_status, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/triggers/instance/{triggerId}/status'.sub('{' + 'triggerId' + '}', CGI.escape(trigger_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'switch_trigger_status_body_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'TriggerResponseDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TriggersApi.switch_post_trigger_instance_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TriggersApi#switch_post_trigger_instance_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Switch trigger instance status
    #
    # Switches the status of a trigger instance.
    #
    # @param enabled [Boolean] The new enabled status of the trigger
    # @param x_api_key [String] 
    # @param trigger_id [String] 
    # @param body [SwitchTriggerStatusBodyDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def switch_trigger_instance_status(enabled:, x_api_key:, trigger_id:, extra: {})
      _body = {}
      _body[:enabled] = enabled if enabled != SENTINEL
      extra[:switch_trigger_status_body_dto] = _body if !_body.empty?
      api_response = switch_trigger_instance_status_with_http_info_impl(x_api_key, trigger_id, extra)
      api_response.data
    end

    # Switch trigger instance status
    #
    # Switches the status of a trigger instance.
    #
    # @param enabled [Boolean] The new enabled status of the trigger
    # @param x_api_key [String] 
    # @param trigger_id [String] 
    # @param body [SwitchTriggerStatusBodyDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def switch_trigger_instance_status_with_http_info(enabled:, x_api_key:, trigger_id:, extra: {})
      _body = {}
      _body[:enabled] = enabled if enabled != SENTINEL
      extra[:switch_trigger_status_body_dto] = _body if !_body.empty?
      switch_trigger_instance_status_with_http_info_impl(x_api_key, trigger_id, extra)
    end

    # Switch trigger instance status
    # Switches the status of a trigger instance.
    # @param x_api_key [String] 
    # @param trigger_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [SwitchTriggerStatusBodyDTO] :switch_trigger_status_body_dto SwitchTriggerStatusBodyDTO
    # @return [TriggerResponseDTO]
    private def switch_trigger_instance_status_impl(x_api_key, trigger_id, opts = {})
      data, _status_code, _headers = switch_trigger_instance_status_with_http_info(x_api_key, trigger_id, opts)
      data
    end

    # Switch trigger instance status
    # Switches the status of a trigger instance.
    # @param x_api_key [String] 
    # @param trigger_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [SwitchTriggerStatusBodyDTO] :switch_trigger_status_body_dto SwitchTriggerStatusBodyDTO
    # @return [APIResponse] data is TriggerResponseDTO, status code, headers and response
    private def switch_trigger_instance_status_with_http_info_impl(x_api_key, trigger_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TriggersApi.switch_trigger_instance_status ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling TriggersApi.switch_trigger_instance_status"
      end
      # verify the required parameter 'trigger_id' is set
      if @api_client.config.client_side_validation && trigger_id.nil?
        fail ArgumentError, "Missing the required parameter 'trigger_id' when calling TriggersApi.switch_trigger_instance_status"
      end
      pattern = Regexp.new(/[^\\/#\?]+?/)
      if @api_client.config.client_side_validation && trigger_id !~ pattern
        fail ArgumentError, "invalid value for 'trigger_id' when calling TriggersApi.switch_trigger_instance_status, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/triggers/instance/{triggerId}/status'.sub('{' + 'triggerId' + '}', CGI.escape(trigger_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'switch_trigger_status_body_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'TriggerResponseDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TriggersApi.switch_trigger_instance_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TriggersApi#switch_trigger_instance_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Triggers = TriggersApi::new
end
