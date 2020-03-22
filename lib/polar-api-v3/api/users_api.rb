=begin
#Polar Accesslink API

#Polar Accesslink API documentation

The version of the OpenAPI document: 3.40.0
Contact: b2bhelpdesk@polar.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'cgi'

module Polar
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete user
    # When partner wishes no longer to receive user data, user can be de-registered.This will revoke the access token authorized by user.
    # @param user_id [Integer] User identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_user(user_id, opts = {})
      delete_user_with_http_info(user_id, opts)
      nil
    end

    # Delete user
    # When partner wishes no longer to receive user data, user can be de-registered.This will revoke the access token authorized by user.
    # @param user_id [Integer] User identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_user_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.delete_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.delete_user"
      end
      pattern = Regexp.new(/[0-9]+/)
      if @api_client.config.client_side_validation && user_id !~ pattern
        fail ArgumentError, "invalid value for 'user_id' when calling UsersApi.delete_user, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/v3/users/{user-id}'.sub('{' + 'user-id' + '}', CGI.escape(user_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#delete_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get user information
    # List user basic information. Note: Although it is possible to get users weight and height from this resource, the [get physical info](#get-physical-info) should be used instead.
    # @param user_id [Integer] User identifier
    # @param [Hash] opts the optional parameters
    # @return [User]
    def get_user_information(user_id, opts = {})
      data, _status_code, _headers = get_user_information_with_http_info(user_id, opts)
      data
    end

    # Get user information
    # List user basic information. Note: Although it is possible to get users weight and height from this resource, the [get physical info](#get-physical-info) should be used instead.
    # @param user_id [Integer] User identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(User, Integer, Hash)>] User data, response status code and response headers
    def get_user_information_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_user_information ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.get_user_information"
      end
      pattern = Regexp.new(/[0-9]+/)
      if @api_client.config.client_side_validation && user_id !~ pattern
        fail ArgumentError, "invalid value for 'user_id' when calling UsersApi.get_user_information, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/v3/users/{user-id}'.sub('{' + 'user-id' + '}', CGI.escape(user_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'User' 

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_user_information\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Register user
    # Once partner has been authorized by user, partner must register user before being able to access her data.
    # @param register [Register] 
    # @param [Hash] opts the optional parameters
    # @return [User]
    def register_user(register, opts = {})
      data, _status_code, _headers = register_user_with_http_info(register, opts)
      data
    end

    # Register user
    # Once partner has been authorized by user, partner must register user before being able to access her data.
    # @param register [Register] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(User, Integer, Hash)>] User data, response status code and response headers
    def register_user_with_http_info(register, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.register_user ...'
      end
      # verify the required parameter 'register' is set
      if @api_client.config.client_side_validation && register.nil?
        fail ArgumentError, "Missing the required parameter 'register' when calling UsersApi.register_user"
      end
      # resource path
      local_var_path = '/v3/users'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(register) 

      # return_type
      return_type = opts[:return_type] || 'User' 

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#register_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end