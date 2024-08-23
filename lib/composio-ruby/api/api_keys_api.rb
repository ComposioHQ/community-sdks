=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

require 'cgi'

module ComposioRuby
  class APIKeysApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete api key
    #
    # @param x_api_key [String] 
    # @param id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_api_key(x_api_key:, id:, extra: {})
      delete_api_key_with_http_info_impl(x_api_key, id, extra)
      nil
    end

    # Delete api key
    #
    # @param x_api_key [String] 
    # @param id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_api_key_with_http_info(x_api_key:, id:, extra: {})
      delete_api_key_with_http_info_impl(x_api_key, id, extra)
    end

    # Delete api key
    # @param x_api_key [String] 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    private def delete_api_key_impl(x_api_key, id, opts = {})
      delete_api_key_with_http_info(x_api_key, id, opts)
      nil
    end

    # Delete api key
    # @param x_api_key [String] 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is nil, status code, headers and response
    private def delete_api_key_with_http_info_impl(x_api_key, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: APIKeysApi.delete_api_key ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling APIKeysApi.delete_api_key"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling APIKeysApi.delete_api_key"
      end
      pattern = Regexp.new(/[^\\/#\?]+?/)
      if @api_client.config.client_side_validation && id !~ pattern
        fail ArgumentError, "invalid value for 'id' when calling APIKeysApi.delete_api_key, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/api_keys/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"APIKeysApi.delete_api_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: APIKeysApi#delete_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Generate api key
    #
    # @param name [String] The name of the API key to be generated
    # @param x_api_key [String] 
    # @param body [GenerateAPIKeyReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def generate_api_key(name:, x_api_key:, extra: {})
      _body = {}
      _body[:name] = name if name != SENTINEL
      generate_api_key_req_dto = _body
      api_response = generate_api_key_with_http_info_impl(x_api_key, generate_api_key_req_dto, extra)
      api_response.data
    end

    # Generate api key
    #
    # @param name [String] The name of the API key to be generated
    # @param x_api_key [String] 
    # @param body [GenerateAPIKeyReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def generate_api_key_with_http_info(name:, x_api_key:, extra: {})
      _body = {}
      _body[:name] = name if name != SENTINEL
      generate_api_key_req_dto = _body
      generate_api_key_with_http_info_impl(x_api_key, generate_api_key_req_dto, extra)
    end

    # Generate api key
    # @param x_api_key [String] 
    # @param generate_api_key_req_dto [GenerateAPIKeyReqDTO] GenerateAPIKeyReqDTO
    # @param [Hash] opts the optional parameters
    # @return [APIKeyResDTO]
    private def generate_api_key_impl(x_api_key, generate_api_key_req_dto, opts = {})
      data, _status_code, _headers = generate_api_key_with_http_info(x_api_key, generate_api_key_req_dto, opts)
      data
    end

    # Generate api key
    # @param x_api_key [String] 
    # @param generate_api_key_req_dto [GenerateAPIKeyReqDTO] GenerateAPIKeyReqDTO
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is APIKeyResDTO, status code, headers and response
    private def generate_api_key_with_http_info_impl(x_api_key, generate_api_key_req_dto, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: APIKeysApi.generate_api_key ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling APIKeysApi.generate_api_key"
      end
      # verify the required parameter 'generate_api_key_req_dto' is set
      if @api_client.config.client_side_validation && generate_api_key_req_dto.nil?
        fail ArgumentError, "Missing the required parameter 'generate_api_key_req_dto' when calling APIKeysApi.generate_api_key"
      end
      # resource path
      local_var_path = '/api/v1/api_keys'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(generate_api_key_req_dto)

      # return_type
      return_type = opts[:debug_return_type] || 'APIKeyResDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"APIKeysApi.generate_api_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: APIKeysApi#generate_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # List api keys
    #
    # @param x_api_key [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_api_keys(x_api_key:, extra: {})
      api_response = list_api_keys_with_http_info_impl(x_api_key, extra)
      api_response.data
    end

    # List api keys
    #
    # @param x_api_key [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_api_keys_with_http_info(x_api_key:, extra: {})
      list_api_keys_with_http_info_impl(x_api_key, extra)
    end

    # List api keys
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<APIKeyResDTO>]
    private def list_api_keys_impl(x_api_key, opts = {})
      data, _status_code, _headers = list_api_keys_with_http_info(x_api_key, opts)
      data
    end

    # List api keys
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Array<APIKeyResDTO>, status code, headers and response
    private def list_api_keys_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: APIKeysApi.list_api_keys ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling APIKeysApi.list_api_keys"
      end
      # resource path
      local_var_path = '/api/v1/api_keys'

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
      return_type = opts[:debug_return_type] || 'Array<APIKeyResDTO>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"APIKeysApi.list_api_keys",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: APIKeysApi#list_api_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  APIKeys = APIKeysApi::new
end
