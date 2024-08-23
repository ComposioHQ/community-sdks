=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

require 'cgi'

module ComposioRuby
  class AuthApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete client
    #
    # @param x_api_key [String] 
    # @param client_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_client(x_api_key:, client_id:, extra: {})
      delete_client_with_http_info_impl(x_api_key, client_id, extra)
      nil
    end

    # Delete client
    #
    # @param x_api_key [String] 
    # @param client_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_client_with_http_info(x_api_key:, client_id:, extra: {})
      delete_client_with_http_info_impl(x_api_key, client_id, extra)
    end

    # Delete client
    # @param x_api_key [String] 
    # @param client_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    private def delete_client_impl(x_api_key, client_id, opts = {})
      delete_client_with_http_info(x_api_key, client_id, opts)
      nil
    end

    # Delete client
    # @param x_api_key [String] 
    # @param client_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is nil, status code, headers and response
    private def delete_client_with_http_info_impl(x_api_key, client_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.delete_client ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling AuthApi.delete_client"
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling AuthApi.delete_client"
      end
      pattern = Regexp.new(/[^\\/#\?]+?/)
      if @api_client.config.client_side_validation && client_id !~ pattern
        fail ArgumentError, "invalid value for 'client_id' when calling AuthApi.delete_client, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/client/auth/delete/{clientId}'.sub('{' + 'clientId' + '}', CGI.escape(client_id.to_s))

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
        :operation => :"AuthApi.delete_client",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#delete_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get client info
    #
    # @param x_api_key [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_info(x_api_key:, extra: {})
      get_user_info_with_http_info_impl(x_api_key, extra)
      nil
    end

    # Get client info
    #
    # @param x_api_key [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_info_with_http_info(x_api_key:, extra: {})
      get_user_info_with_http_info_impl(x_api_key, extra)
    end

    # Get client info
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    private def get_user_info_impl(x_api_key, opts = {})
      get_user_info_with_http_info(x_api_key, opts)
      nil
    end

    # Get client info
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is nil, status code, headers and response
    private def get_user_info_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.get_user_info ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling AuthApi.get_user_info"
      end
      # resource path
      local_var_path = '/api/v1/client/auth/client_info'

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
        :operation => :"AuthApi.get_user_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#get_user_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Google login
    #
    # @param x_api_key [String] 
    # @param body [Object] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def google_login(x_api_key:, body:: SENTINEL, extra: {})
      extra[:body] = body if body != SENTINEL
      google_login_with_http_info_impl(x_api_key, extra)
      nil
    end

    # Google login
    #
    # @param x_api_key [String] 
    # @param body [Object] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def google_login_with_http_info(x_api_key:, body:: SENTINEL, extra: {})
      extra[:body] = body if body != SENTINEL
      google_login_with_http_info_impl(x_api_key, extra)
    end

    # Google login
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :body 
    # @return [nil]
    private def google_login_impl(x_api_key, opts = {})
      google_login_with_http_info(x_api_key, opts)
      nil
    end

    # Google login
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :body 
    # @return [APIResponse] data is nil, status code, headers and response
    private def google_login_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.google_login ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling AuthApi.google_login"
      end
      # resource path
      local_var_path = '/api/v1/client/auth/google_login'

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
        :operation => :"AuthApi.google_login",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#google_login\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Identify client
    #
    # @param hash [String] The hash of the client
    # @param x_api_key [String] 
    # @param framework [String] The framework used by the client
    # @param body [IdentifyClientReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def identify_client(hash:, x_api_key:, framework: SENTINEL, extra: {})
      _body = {}
      _body[:hash] = hash if hash != SENTINEL
      _body[:framework] = framework if framework != SENTINEL
      extra[:identify_client_req_dto] = _body if !_body.empty?
      api_response = identify_client_with_http_info_impl(x_api_key, extra)
      api_response.data
    end

    # Identify client
    #
    # @param hash [String] The hash of the client
    # @param x_api_key [String] 
    # @param framework [String] The framework used by the client
    # @param body [IdentifyClientReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def identify_client_with_http_info(hash:, x_api_key:, framework: SENTINEL, extra: {})
      _body = {}
      _body[:hash] = hash if hash != SENTINEL
      _body[:framework] = framework if framework != SENTINEL
      extra[:identify_client_req_dto] = _body if !_body.empty?
      identify_client_with_http_info_impl(x_api_key, extra)
    end

    # Identify client
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [IdentifyClientReqDTO] :identify_client_req_dto IdentifyClientReqDTO
    # @return [IdentifyClientResDTO]
    private def identify_client_impl(x_api_key, opts = {})
      data, _status_code, _headers = identify_client_with_http_info(x_api_key, opts)
      data
    end

    # Identify client
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [IdentifyClientReqDTO] :identify_client_req_dto IdentifyClientReqDTO
    # @return [APIResponse] data is IdentifyClientResDTO, status code, headers and response
    private def identify_client_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.identify_client ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling AuthApi.identify_client"
      end
      # resource path
      local_var_path = '/api/v1/client/auth/identify'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'identify_client_req_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'IdentifyClientResDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AuthApi.identify_client",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#identify_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Logout API
    #
    # Logout the user and clear the server side session
    #
    # @param x_api_key [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def logout(x_api_key:, extra: {})
      api_response = logout_with_http_info_impl(x_api_key, extra)
      api_response.data
    end

    # Logout API
    #
    # Logout the user and clear the server side session
    #
    # @param x_api_key [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def logout_with_http_info(x_api_key:, extra: {})
      logout_with_http_info_impl(x_api_key, extra)
    end

    # Logout API
    # Logout the user and clear the server side session
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [LogoutResDTO]
    private def logout_impl(x_api_key, opts = {})
      data, _status_code, _headers = logout_with_http_info(x_api_key, opts)
      data
    end

    # Logout API
    # Logout the user and clear the server side session
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is LogoutResDTO, status code, headers and response
    private def logout_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.logout ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling AuthApi.logout"
      end
      # resource path
      local_var_path = '/api/v1/client/auth/logout'

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
      return_type = opts[:debug_return_type] || 'LogoutResDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AuthApi.logout",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#logout\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Pusher user auth
    #
    # @param x_api_key [String] 
    # @param body [Object] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def pusher_user_auth(x_api_key:, body:: SENTINEL, extra: {})
      extra[:body] = body if body != SENTINEL
      pusher_user_auth_with_http_info_impl(x_api_key, extra)
      nil
    end

    # Pusher user auth
    #
    # @param x_api_key [String] 
    # @param body [Object] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def pusher_user_auth_with_http_info(x_api_key:, body:: SENTINEL, extra: {})
      extra[:body] = body if body != SENTINEL
      pusher_user_auth_with_http_info_impl(x_api_key, extra)
    end

    # Pusher user auth
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :body 
    # @return [nil]
    private def pusher_user_auth_impl(x_api_key, opts = {})
      pusher_user_auth_with_http_info(x_api_key, opts)
      nil
    end

    # Pusher user auth
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :body 
    # @return [APIResponse] data is nil, status code, headers and response
    private def pusher_user_auth_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.pusher_user_auth ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling AuthApi.pusher_user_auth"
      end
      # resource path
      local_var_path = '/api/v1/client/auth/pusher_auth'

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
        :operation => :"AuthApi.pusher_user_auth",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#pusher_user_auth\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Send magic link
    #
    # @param email [String] The email of the user
    # @param verify_host [String] The frontend host of the user
    # @param x_api_key [String] 
    # @param body [MagicLinkReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def send_magic_link(email:, verify_host:, x_api_key:, extra: {})
      _body = {}
      _body[:email] = email if email != SENTINEL
      _body[:verifyHost] = verify_host if verify_host != SENTINEL
      extra[:magic_link_req_dto] = _body if !_body.empty?
      api_response = send_magic_link_with_http_info_impl(x_api_key, extra)
      api_response.data
    end

    # Send magic link
    #
    # @param email [String] The email of the user
    # @param verify_host [String] The frontend host of the user
    # @param x_api_key [String] 
    # @param body [MagicLinkReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def send_magic_link_with_http_info(email:, verify_host:, x_api_key:, extra: {})
      _body = {}
      _body[:email] = email if email != SENTINEL
      _body[:verifyHost] = verify_host if verify_host != SENTINEL
      extra[:magic_link_req_dto] = _body if !_body.empty?
      send_magic_link_with_http_info_impl(x_api_key, extra)
    end

    # Send magic link
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [MagicLinkReqDTO] :magic_link_req_dto MagicLinkReqDTO
    # @return [MagicLinkResDTO]
    private def send_magic_link_impl(x_api_key, opts = {})
      data, _status_code, _headers = send_magic_link_with_http_info(x_api_key, opts)
      data
    end

    # Send magic link
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [MagicLinkReqDTO] :magic_link_req_dto MagicLinkReqDTO
    # @return [APIResponse] data is MagicLinkResDTO, status code, headers and response
    private def send_magic_link_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.send_magic_link ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling AuthApi.send_magic_link"
      end
      # resource path
      local_var_path = '/api/v1/client/auth/send_magic_link'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'magic_link_req_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'MagicLinkResDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AuthApi.send_magic_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#send_magic_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Track client
    #
    # @param framework [String] The framework used by the client
    # @param x_api_key [String] 
    # @param mac_address [String] The MAC address of the client device
    # @param user_git_user_info [UserGitUserInfo] 
    # @param body [TrackClientReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def track_client(framework:, x_api_key:, mac_address: SENTINEL, user_git_user_info: SENTINEL, extra: {})
      _body = {}
      _body[:framework] = framework if framework != SENTINEL
      _body[:mac_address] = mac_address if mac_address != SENTINEL
      _body[:user_git_user_info] = user_git_user_info if user_git_user_info != SENTINEL
      extra[:track_client_req_dto] = _body if !_body.empty?
      api_response = track_client_with_http_info_impl(x_api_key, extra)
      api_response.data
    end

    # Track client
    #
    # @param framework [String] The framework used by the client
    # @param x_api_key [String] 
    # @param mac_address [String] The MAC address of the client device
    # @param user_git_user_info [UserGitUserInfo] 
    # @param body [TrackClientReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def track_client_with_http_info(framework:, x_api_key:, mac_address: SENTINEL, user_git_user_info: SENTINEL, extra: {})
      _body = {}
      _body[:framework] = framework if framework != SENTINEL
      _body[:mac_address] = mac_address if mac_address != SENTINEL
      _body[:user_git_user_info] = user_git_user_info if user_git_user_info != SENTINEL
      extra[:track_client_req_dto] = _body if !_body.empty?
      track_client_with_http_info_impl(x_api_key, extra)
    end

    # Track client
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [TrackClientReqDTO] :track_client_req_dto TrackClientReqDTO
    # @return [TrackClientResDTO]
    private def track_client_impl(x_api_key, opts = {})
      data, _status_code, _headers = track_client_with_http_info(x_api_key, opts)
      data
    end

    # Track client
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [TrackClientReqDTO] :track_client_req_dto TrackClientReqDTO
    # @return [APIResponse] data is TrackClientResDTO, status code, headers and response
    private def track_client_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.track_client ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling AuthApi.track_client"
      end
      # resource path
      local_var_path = '/api/v1/client/auth/track'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'track_client_req_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'TrackClientResDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AuthApi.track_client",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#track_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Verify magic link
    #
    # @param token [String] The magic link token
    # @param x_api_key [String] 
    # @param body [VerifyMagicLinkReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def verify_magic_link(token:, x_api_key:, extra: {})
      _body = {}
      _body[:token] = token if token != SENTINEL
      extra[:verify_magic_link_req_dto] = _body if !_body.empty?
      api_response = verify_magic_link_with_http_info_impl(x_api_key, extra)
      api_response.data
    end

    # Verify magic link
    #
    # @param token [String] The magic link token
    # @param x_api_key [String] 
    # @param body [VerifyMagicLinkReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def verify_magic_link_with_http_info(token:, x_api_key:, extra: {})
      _body = {}
      _body[:token] = token if token != SENTINEL
      extra[:verify_magic_link_req_dto] = _body if !_body.empty?
      verify_magic_link_with_http_info_impl(x_api_key, extra)
    end

    # Verify magic link
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [VerifyMagicLinkReqDTO] :verify_magic_link_req_dto VerifyMagicLinkReqDTO
    # @return [VerifyMagicLinkResDTO]
    private def verify_magic_link_impl(x_api_key, opts = {})
      data, _status_code, _headers = verify_magic_link_with_http_info(x_api_key, opts)
      data
    end

    # Verify magic link
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [VerifyMagicLinkReqDTO] :verify_magic_link_req_dto VerifyMagicLinkReqDTO
    # @return [APIResponse] data is VerifyMagicLinkResDTO, status code, headers and response
    private def verify_magic_link_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.verify_magic_link ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling AuthApi.verify_magic_link"
      end
      # resource path
      local_var_path = '/api/v1/client/auth/verify_magic_link'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'verify_magic_link_req_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'VerifyMagicLinkResDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AuthApi.verify_magic_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#verify_magic_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Auth = AuthApi::new
end
