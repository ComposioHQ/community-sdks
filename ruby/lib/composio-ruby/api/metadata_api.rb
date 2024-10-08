=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

require 'cgi'

module ComposioRuby
  class MetadataApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get metadata
    #
    # @param x_api_key [String] 
    # @param email [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_metadata(x_api_key:, email:, extra: {})
      get_metadata_with_http_info_impl(x_api_key, email, extra)
      nil
    end

    # Get metadata
    #
    # @param x_api_key [String] 
    # @param email [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_metadata_with_http_info(x_api_key:, email:, extra: {})
      get_metadata_with_http_info_impl(x_api_key, email, extra)
    end

    # Get metadata
    # @param x_api_key [String] 
    # @param email [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    private def get_metadata_impl(x_api_key, email, opts = {})
      get_metadata_with_http_info(x_api_key, email, opts)
      nil
    end

    # Get metadata
    # @param x_api_key [String] 
    # @param email [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is nil, status code, headers and response
    private def get_metadata_with_http_info_impl(x_api_key, email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataApi.get_metadata ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling MetadataApi.get_metadata"
      end
      # verify the required parameter 'email' is set
      if @api_client.config.client_side_validation && email.nil?
        fail ArgumentError, "Missing the required parameter 'email' when calling MetadataApi.get_metadata"
      end
      # resource path
      local_var_path = '/api/v1/metadata'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'email'] = email

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
        :operation => :"MetadataApi.get_metadata",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataApi#get_metadata\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get toggle info
    #
    # @param x_api_key [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_toggle_info(x_api_key:, extra: {})
      get_toggle_info_with_http_info_impl(x_api_key, extra)
      nil
    end

    # Get toggle info
    #
    # @param x_api_key [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_toggle_info_with_http_info(x_api_key:, extra: {})
      get_toggle_info_with_http_info_impl(x_api_key, extra)
    end

    # Get toggle info
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    private def get_toggle_info_impl(x_api_key, opts = {})
      get_toggle_info_with_http_info(x_api_key, opts)
      nil
    end

    # Get toggle info
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is nil, status code, headers and response
    private def get_toggle_info_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataApi.get_toggle_info ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling MetadataApi.get_toggle_info"
      end
      # resource path
      local_var_path = '/api/v1/metadata/toggle.info'

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
        :operation => :"MetadataApi.get_toggle_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataApi#get_toggle_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Toggle trigger state
    #
    # @param enabled [Boolean] Flag to enable or disable triggers
    # @param x_api_key [String] 
    # @param body [TriggersEnabledToggleReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def toggle_trigger_state(enabled:, x_api_key:, extra: {})
      _body = {}
      _body[:enabled] = enabled if enabled != SENTINEL
      extra[:triggers_enabled_toggle_req_dto] = _body if !_body.empty?
      toggle_trigger_state_with_http_info_impl(x_api_key, extra)
      nil
    end

    # Toggle trigger state
    #
    # @param enabled [Boolean] Flag to enable or disable triggers
    # @param x_api_key [String] 
    # @param body [TriggersEnabledToggleReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def toggle_trigger_state_with_http_info(enabled:, x_api_key:, extra: {})
      _body = {}
      _body[:enabled] = enabled if enabled != SENTINEL
      extra[:triggers_enabled_toggle_req_dto] = _body if !_body.empty?
      toggle_trigger_state_with_http_info_impl(x_api_key, extra)
    end

    # Toggle trigger state
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [TriggersEnabledToggleReqDTO] :triggers_enabled_toggle_req_dto TriggersEnabledToggleReqDTO
    # @return [nil]
    private def toggle_trigger_state_impl(x_api_key, opts = {})
      toggle_trigger_state_with_http_info(x_api_key, opts)
      nil
    end

    # Toggle trigger state
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [TriggersEnabledToggleReqDTO] :triggers_enabled_toggle_req_dto TriggersEnabledToggleReqDTO
    # @return [APIResponse] data is nil, status code, headers and response
    private def toggle_trigger_state_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataApi.toggle_trigger_state ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling MetadataApi.toggle_trigger_state"
      end
      # resource path
      local_var_path = '/api/v1/metadata/toggle/trigger'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'triggers_enabled_toggle_req_dto'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MetadataApi.toggle_trigger_state",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataApi#toggle_trigger_state\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Update metadata
    #
    # @param email [String] The email associated with the metadata request
    # @param x_api_key [String] 
    # @param metadata [Object] Additional metadata as a key-value pair
    # @param body [MetadataReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def update_metadata(email:, x_api_key:, metadata: SENTINEL, extra: {})
      _body = {}
      _body[:email] = email if email != SENTINEL
      _body[:metadata] = metadata if metadata != SENTINEL
      metadata_req_dto = _body
      update_metadata_with_http_info_impl(x_api_key, metadata_req_dto, extra)
      nil
    end

    # Update metadata
    #
    # @param email [String] The email associated with the metadata request
    # @param x_api_key [String] 
    # @param metadata [Object] Additional metadata as a key-value pair
    # @param body [MetadataReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def update_metadata_with_http_info(email:, x_api_key:, metadata: SENTINEL, extra: {})
      _body = {}
      _body[:email] = email if email != SENTINEL
      _body[:metadata] = metadata if metadata != SENTINEL
      metadata_req_dto = _body
      update_metadata_with_http_info_impl(x_api_key, metadata_req_dto, extra)
    end

    # Update metadata
    # @param x_api_key [String] 
    # @param metadata_req_dto [MetadataReqDTO] MetadataReqDTO
    # @param [Hash] opts the optional parameters
    # @return [nil]
    private def update_metadata_impl(x_api_key, metadata_req_dto, opts = {})
      update_metadata_with_http_info(x_api_key, metadata_req_dto, opts)
      nil
    end

    # Update metadata
    # @param x_api_key [String] 
    # @param metadata_req_dto [MetadataReqDTO] MetadataReqDTO
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is nil, status code, headers and response
    private def update_metadata_with_http_info_impl(x_api_key, metadata_req_dto, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataApi.update_metadata ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling MetadataApi.update_metadata"
      end
      # verify the required parameter 'metadata_req_dto' is set
      if @api_client.config.client_side_validation && metadata_req_dto.nil?
        fail ArgumentError, "Missing the required parameter 'metadata_req_dto' when calling MetadataApi.update_metadata"
      end
      # resource path
      local_var_path = '/api/v1/metadata'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(metadata_req_dto)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MetadataApi.update_metadata",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataApi#update_metadata\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Metadata = MetadataApi::new
end
