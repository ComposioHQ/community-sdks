=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

require 'cgi'

module ComposioRuby
  class AppsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get app
    #
    # Get app details
    #
    # @param x_api_key [String] 
    # @param app_name [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_app(x_api_key:, app_name:, extra: {})
      api_response = get_app_with_http_info_impl(x_api_key, app_name, extra)
      api_response.data
    end

    # Get app
    #
    # Get app details
    #
    # @param x_api_key [String] 
    # @param app_name [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_app_with_http_info(x_api_key:, app_name:, extra: {})
      get_app_with_http_info_impl(x_api_key, app_name, extra)
    end

    # Get app
    # Get app details
    # @param x_api_key [String] 
    # @param app_name [String] 
    # @param [Hash] opts the optional parameters
    # @return [SingleAppInfoResDTO]
    private def get_app_impl(x_api_key, app_name, opts = {})
      data, _status_code, _headers = get_app_with_http_info(x_api_key, app_name, opts)
      data
    end

    # Get app
    # Get app details
    # @param x_api_key [String] 
    # @param app_name [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is SingleAppInfoResDTO, status code, headers and response
    private def get_app_with_http_info_impl(x_api_key, app_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppsApi.get_app ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling AppsApi.get_app"
      end
      # verify the required parameter 'app_name' is set
      if @api_client.config.client_side_validation && app_name.nil?
        fail ArgumentError, "Missing the required parameter 'app_name' when calling AppsApi.get_app"
      end
      pattern = Regexp.new(/[^\\/#\?]+?/)
      if @api_client.config.client_side_validation && app_name !~ pattern
        fail ArgumentError, "invalid value for 'app_name' when calling AppsApi.get_app, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/apps/{appName}'.sub('{' + 'appName' + '}', CGI.escape(app_name.to_s))

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
      return_type = opts[:debug_return_type] || 'SingleAppInfoResDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AppsApi.get_app",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppsApi#get_app\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get apps
    #
    # Retrieve a list of all applications based on query parameters.
    #
    # @param x_api_key [String] 
    # @param category [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_apps(x_api_key:, category: SENTINEL, extra: {})
      extra[:category] = category if category != SENTINEL
      api_response = get_apps_with_http_info_impl(x_api_key, extra)
      api_response.data
    end

    # Get apps
    #
    # Retrieve a list of all applications based on query parameters.
    #
    # @param x_api_key [String] 
    # @param category [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_apps_with_http_info(x_api_key:, category: SENTINEL, extra: {})
      extra[:category] = category if category != SENTINEL
      get_apps_with_http_info_impl(x_api_key, extra)
    end

    # Get apps
    # Retrieve a list of all applications based on query parameters.
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :category 
    # @return [AppListResDTO]
    private def get_apps_impl(x_api_key, opts = {})
      data, _status_code, _headers = get_apps_with_http_info(x_api_key, opts)
      data
    end

    # Get apps
    # Retrieve a list of all applications based on query parameters.
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :category 
    # @return [APIResponse] data is AppListResDTO, status code, headers and response
    private def get_apps_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppsApi.get_apps ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling AppsApi.get_apps"
      end
      # resource path
      local_var_path = '/api/v1/apps'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'category'] = opts[:'category'] if !opts[:'category'].nil?

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
      return_type = opts[:debug_return_type] || 'AppListResDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AppsApi.get_apps",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppsApi#get_apps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get opena api specs
    #
    # @param x_api_key [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_open_api_specs(x_api_key:, extra: {})
      api_response = get_open_api_specs_with_http_info_impl(x_api_key, extra)
      api_response.data
    end

    # Get opena api specs
    #
    # @param x_api_key [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_open_api_specs_with_http_info(x_api_key:, extra: {})
      get_open_api_specs_with_http_info_impl(x_api_key, extra)
    end

    # Get opena api specs
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<AppListResDTO>]
    private def get_open_api_specs_impl(x_api_key, opts = {})
      data, _status_code, _headers = get_open_api_specs_with_http_info(x_api_key, opts)
      data
    end

    # Get opena api specs
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Array<AppListResDTO>, status code, headers and response
    private def get_open_api_specs_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppsApi.get_open_api_specs ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling AppsApi.get_open_api_specs"
      end
      # resource path
      local_var_path = '/api/v1/apps/openapi/spec/list'

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
      return_type = opts[:debug_return_type] || 'Array<AppListResDTO>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AppsApi.get_open_api_specs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppsApi#get_open_api_specs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Apps = AppsApi::new
end
