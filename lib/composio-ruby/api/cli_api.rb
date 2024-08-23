=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

require 'cgi'

module ComposioRuby
  class CLIApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Handle cli code exchange
    #
    # @param x_api_key [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def generate_cli_session(x_api_key:, extra: {})
      api_response = generate_cli_session_with_http_info_impl(x_api_key, extra)
      api_response.data
    end

    # Handle cli code exchange
    #
    # @param x_api_key [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def generate_cli_session_with_http_info(x_api_key:, extra: {})
      generate_cli_session_with_http_info_impl(x_api_key, extra)
    end

    # Handle cli code exchange
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [GenerateCLISessionResDTO]
    private def generate_cli_session_impl(x_api_key, opts = {})
      data, _status_code, _headers = generate_cli_session_with_http_info(x_api_key, opts)
      data
    end

    # Handle cli code exchange
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is GenerateCLISessionResDTO, status code, headers and response
    private def generate_cli_session_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CLIApi.generate_cli_session ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling CLIApi.generate_cli_session"
      end
      # resource path
      local_var_path = '/api/v1/cli/generate-cli-session'

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
      return_type = opts[:debug_return_type] || 'GenerateCLISessionResDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"CLIApi.generate_cli_session",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CLIApi#generate_cli_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get cli code
    #
    # @param x_api_key [String] 
    # @param key [String] 
    # @param code [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_cli_code(x_api_key:, key:, code: SENTINEL, extra: {})
      extra[:code] = code if code != SENTINEL
      api_response = get_cli_code_with_http_info_impl(x_api_key, key, extra)
      api_response.data
    end

    # Get cli code
    #
    # @param x_api_key [String] 
    # @param key [String] 
    # @param code [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_cli_code_with_http_info(x_api_key:, key:, code: SENTINEL, extra: {})
      extra[:code] = code if code != SENTINEL
      get_cli_code_with_http_info_impl(x_api_key, key, extra)
    end

    # Get cli code
    # @param x_api_key [String] 
    # @param key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :code 
    # @return [GetCLISessionResDTO]
    private def get_cli_code_impl(x_api_key, key, opts = {})
      data, _status_code, _headers = get_cli_code_with_http_info(x_api_key, key, opts)
      data
    end

    # Get cli code
    # @param x_api_key [String] 
    # @param key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :code 
    # @return [APIResponse] data is GetCLISessionResDTO, status code, headers and response
    private def get_cli_code_with_http_info_impl(x_api_key, key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CLIApi.get_cli_code ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling CLIApi.get_cli_code"
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling CLIApi.get_cli_code"
      end
      # resource path
      local_var_path = '/api/v1/cli/get-cli-code'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'key'] = key
      query_params[:'code'] = opts[:'code'] if !opts[:'code'].nil?

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
      return_type = opts[:debug_return_type] || 'GetCLISessionResDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"CLIApi.get_cli_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CLIApi#get_cli_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Handle cli code verification
    #
    # @param x_api_key [String] 
    # @param key [String] 
    # @param code [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def verify_cli_code(x_api_key:, key:, code: SENTINEL, extra: {})
      extra[:code] = code if code != SENTINEL
      api_response = verify_cli_code_with_http_info_impl(x_api_key, key, extra)
      api_response.data
    end

    # Handle cli code verification
    #
    # @param x_api_key [String] 
    # @param key [String] 
    # @param code [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def verify_cli_code_with_http_info(x_api_key:, key:, code: SENTINEL, extra: {})
      extra[:code] = code if code != SENTINEL
      verify_cli_code_with_http_info_impl(x_api_key, key, extra)
    end

    # Handle cli code verification
    # @param x_api_key [String] 
    # @param key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :code 
    # @return [VerifyCLICodeResDTO]
    private def verify_cli_code_impl(x_api_key, key, opts = {})
      data, _status_code, _headers = verify_cli_code_with_http_info(x_api_key, key, opts)
      data
    end

    # Handle cli code verification
    # @param x_api_key [String] 
    # @param key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :code 
    # @return [APIResponse] data is VerifyCLICodeResDTO, status code, headers and response
    private def verify_cli_code_with_http_info_impl(x_api_key, key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CLIApi.verify_cli_code ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling CLIApi.verify_cli_code"
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling CLIApi.verify_cli_code"
      end
      # resource path
      local_var_path = '/api/v1/cli/verify-cli-code'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'key'] = key
      query_params[:'code'] = opts[:'code'] if !opts[:'code'].nil?

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
      return_type = opts[:debug_return_type] || 'VerifyCLICodeResDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"CLIApi.verify_cli_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CLIApi#verify_cli_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  CLI = CLIApi::new
end
