=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

require 'cgi'

module ComposioRuby
  class TeamApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Invite member
    #
    # @param email [String] The email of the member
    # @param name [String] The name of the member
    # @param verify_host [String] The host to verify the member
    # @param x_api_key [String] 
    # @param body [InviteMemberReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def invite_member(email:, name:, verify_host:, x_api_key:, extra: {})
      _body = {}
      _body[:email] = email if email != SENTINEL
      _body[:name] = name if name != SENTINEL
      _body[:verifyHost] = verify_host if verify_host != SENTINEL
      extra[:invite_member_req_dto] = _body if !_body.empty?
      api_response = invite_member_with_http_info_impl(x_api_key, extra)
      api_response.data
    end

    # Invite member
    #
    # @param email [String] The email of the member
    # @param name [String] The name of the member
    # @param verify_host [String] The host to verify the member
    # @param x_api_key [String] 
    # @param body [InviteMemberReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def invite_member_with_http_info(email:, name:, verify_host:, x_api_key:, extra: {})
      _body = {}
      _body[:email] = email if email != SENTINEL
      _body[:name] = name if name != SENTINEL
      _body[:verifyHost] = verify_host if verify_host != SENTINEL
      extra[:invite_member_req_dto] = _body if !_body.empty?
      invite_member_with_http_info_impl(x_api_key, extra)
    end

    # Invite member
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [InviteMemberReqDTO] :invite_member_req_dto InviteMemberReqDTO
    # @return [MemberResDTO]
    private def invite_member_impl(x_api_key, opts = {})
      data, _status_code, _headers = invite_member_with_http_info(x_api_key, opts)
      data
    end

    # Invite member
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [InviteMemberReqDTO] :invite_member_req_dto InviteMemberReqDTO
    # @return [APIResponse] data is MemberResDTO, status code, headers and response
    private def invite_member_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeamApi.invite_member ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling TeamApi.invite_member"
      end
      # resource path
      local_var_path = '/api/v1/team/invite'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'invite_member_req_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'MemberResDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TeamApi.invite_member",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamApi#invite_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # List members
    #
    # @param x_api_key [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_members(x_api_key:, extra: {})
      api_response = list_members_with_http_info_impl(x_api_key, extra)
      api_response.data
    end

    # List members
    #
    # @param x_api_key [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_members_with_http_info(x_api_key:, extra: {})
      list_members_with_http_info_impl(x_api_key, extra)
    end

    # List members
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<MemberResDTO>]
    private def list_members_impl(x_api_key, opts = {})
      data, _status_code, _headers = list_members_with_http_info(x_api_key, opts)
      data
    end

    # List members
    # @param x_api_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Array<MemberResDTO>, status code, headers and response
    private def list_members_with_http_info_impl(x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeamApi.list_members ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling TeamApi.list_members"
      end
      # resource path
      local_var_path = '/api/v1/team/members'

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
      return_type = opts[:debug_return_type] || 'Array<MemberResDTO>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TeamApi.list_members",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamApi#list_members\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Remove member
    #
    # @param x_api_key [String] 
    # @param id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def remove_member(x_api_key:, id:, extra: {})
      remove_member_with_http_info_impl(x_api_key, id, extra)
      nil
    end

    # Remove member
    #
    # @param x_api_key [String] 
    # @param id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def remove_member_with_http_info(x_api_key:, id:, extra: {})
      remove_member_with_http_info_impl(x_api_key, id, extra)
    end

    # Remove member
    # @param x_api_key [String] 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    private def remove_member_impl(x_api_key, id, opts = {})
      remove_member_with_http_info(x_api_key, id, opts)
      nil
    end

    # Remove member
    # @param x_api_key [String] 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is nil, status code, headers and response
    private def remove_member_with_http_info_impl(x_api_key, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeamApi.remove_member ...'
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling TeamApi.remove_member"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TeamApi.remove_member"
      end
      pattern = Regexp.new(/[^\\/#\?]+?/)
      if @api_client.config.client_side_validation && id !~ pattern
        fail ArgumentError, "invalid value for 'id' when calling TeamApi.remove_member, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/team/members/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"TeamApi.remove_member",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamApi#remove_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Team = TeamApi::new
end
