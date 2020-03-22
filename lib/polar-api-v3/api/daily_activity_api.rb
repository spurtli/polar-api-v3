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
  class DailyActivityApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Commit transaction
    # After successfully retrieving activity summary data within a transaction, partners are expected to commit the transaction.
    # @param transaction_id [Integer] Transaction identifier
    # @param user_id [Integer] User identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def commit_activity_transaction(transaction_id, user_id, opts = {})
      commit_activity_transaction_with_http_info(transaction_id, user_id, opts)
      nil
    end

    # Commit transaction
    # After successfully retrieving activity summary data within a transaction, partners are expected to commit the transaction.
    # @param transaction_id [Integer] Transaction identifier
    # @param user_id [Integer] User identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def commit_activity_transaction_with_http_info(transaction_id, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DailyActivityApi.commit_activity_transaction ...'
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling DailyActivityApi.commit_activity_transaction"
      end
      pattern = Regexp.new(/[0-9]+/)
      if @api_client.config.client_side_validation && transaction_id !~ pattern
        fail ArgumentError, "invalid value for 'transaction_id' when calling DailyActivityApi.commit_activity_transaction, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling DailyActivityApi.commit_activity_transaction"
      end
      pattern = Regexp.new(/[0-9]+/)
      if @api_client.config.client_side_validation && user_id !~ pattern
        fail ArgumentError, "invalid value for 'user_id' when calling DailyActivityApi.commit_activity_transaction, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/v3/users/{user-id}/activity-transactions/{transaction-id}'.sub('{' + 'transaction-id' + '}', CGI.escape(transaction_id.to_s).gsub('%2F', '/')).sub('{' + 'user-id' + '}', CGI.escape(user_id.to_s).gsub('%2F', '/'))

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

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DailyActivityApi#commit_activity_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create transaction
    # Initiate activity transaction. Check for new activity summaries and create a new transaction if found.
    # @param user_id [Integer] User identifier
    # @param [Hash] opts the optional parameters
    # @return [TransactionLocation]
    def create_activity_transaction(user_id, opts = {})
      data, _status_code, _headers = create_activity_transaction_with_http_info(user_id, opts)
      data
    end

    # Create transaction
    # Initiate activity transaction. Check for new activity summaries and create a new transaction if found.
    # @param user_id [Integer] User identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionLocation, Integer, Hash)>] TransactionLocation data, response status code and response headers
    def create_activity_transaction_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DailyActivityApi.create_activity_transaction ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling DailyActivityApi.create_activity_transaction"
      end
      pattern = Regexp.new(/[0-9]+/)
      if @api_client.config.client_side_validation && user_id !~ pattern
        fail ArgumentError, "invalid value for 'user_id' when calling DailyActivityApi.create_activity_transaction, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/v3/users/{user-id}/activity-transactions'.sub('{' + 'user-id' + '}', CGI.escape(user_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:return_type] || 'TransactionLocation' 

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
        @api_client.config.logger.debug "API called: DailyActivityApi#create_activity_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get activity summary
    # @param user_id [Integer] User identifier
    # @param transaction_id [Integer] Transaction identifier
    # @param activity_id [Integer] Activity summary identifier
    # @param [Hash] opts the optional parameters
    # @return [Activity]
    def get_activity_summary(user_id, transaction_id, activity_id, opts = {})
      data, _status_code, _headers = get_activity_summary_with_http_info(user_id, transaction_id, activity_id, opts)
      data
    end

    # Get activity summary
    # @param user_id [Integer] User identifier
    # @param transaction_id [Integer] Transaction identifier
    # @param activity_id [Integer] Activity summary identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(Activity, Integer, Hash)>] Activity data, response status code and response headers
    def get_activity_summary_with_http_info(user_id, transaction_id, activity_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DailyActivityApi.get_activity_summary ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling DailyActivityApi.get_activity_summary"
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling DailyActivityApi.get_activity_summary"
      end
      # verify the required parameter 'activity_id' is set
      if @api_client.config.client_side_validation && activity_id.nil?
        fail ArgumentError, "Missing the required parameter 'activity_id' when calling DailyActivityApi.get_activity_summary"
      end
      # resource path
      local_var_path = '/v3/users/{user-id}/activity-transactions/{transaction-id}/activities/{activity-id}'.sub('{' + 'user-id' + '}', CGI.escape(user_id.to_s).gsub('%2F', '/')).sub('{' + 'transaction-id' + '}', CGI.escape(transaction_id.to_s).gsub('%2F', '/')).sub('{' + 'activity-id' + '}', CGI.escape(activity_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:return_type] || 'Activity' 

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
        @api_client.config.logger.debug "API called: DailyActivityApi#get_activity_summary\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get step samples
    # Get activity step samples. Example data can be seen from [appendix](#activity-step-time-series).
    # @param user_id [Integer] User identifier
    # @param transaction_id [Integer] Transaction identifier
    # @param activity_id [Integer] Activity summary identifier
    # @param [Hash] opts the optional parameters
    # @return [ActivityStepSamples]
    def get_step_samples(user_id, transaction_id, activity_id, opts = {})
      data, _status_code, _headers = get_step_samples_with_http_info(user_id, transaction_id, activity_id, opts)
      data
    end

    # Get step samples
    # Get activity step samples. Example data can be seen from [appendix](#activity-step-time-series).
    # @param user_id [Integer] User identifier
    # @param transaction_id [Integer] Transaction identifier
    # @param activity_id [Integer] Activity summary identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(ActivityStepSamples, Integer, Hash)>] ActivityStepSamples data, response status code and response headers
    def get_step_samples_with_http_info(user_id, transaction_id, activity_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DailyActivityApi.get_step_samples ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling DailyActivityApi.get_step_samples"
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling DailyActivityApi.get_step_samples"
      end
      # verify the required parameter 'activity_id' is set
      if @api_client.config.client_side_validation && activity_id.nil?
        fail ArgumentError, "Missing the required parameter 'activity_id' when calling DailyActivityApi.get_step_samples"
      end
      # resource path
      local_var_path = '/v3/users/{user-id}/activity-transactions/{transaction-id}/activities/{activity-id}/step-samples'.sub('{' + 'user-id' + '}', CGI.escape(user_id.to_s).gsub('%2F', '/')).sub('{' + 'transaction-id' + '}', CGI.escape(transaction_id.to_s).gsub('%2F', '/')).sub('{' + 'activity-id' + '}', CGI.escape(activity_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:return_type] || 'ActivityStepSamples' 

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
        @api_client.config.logger.debug "API called: DailyActivityApi#get_step_samples\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get zone samples
    # Get activity zone samples. Example data can be seen from [appendix](#activity-zone-time-series).
    # @param user_id [Integer] User identifier
    # @param transaction_id [Integer] Transaction identifier
    # @param activity_id [Integer] Activity summary identifier
    # @param [Hash] opts the optional parameters
    # @return [ActivityZoneSamples]
    def get_zone_samples(user_id, transaction_id, activity_id, opts = {})
      data, _status_code, _headers = get_zone_samples_with_http_info(user_id, transaction_id, activity_id, opts)
      data
    end

    # Get zone samples
    # Get activity zone samples. Example data can be seen from [appendix](#activity-zone-time-series).
    # @param user_id [Integer] User identifier
    # @param transaction_id [Integer] Transaction identifier
    # @param activity_id [Integer] Activity summary identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(ActivityZoneSamples, Integer, Hash)>] ActivityZoneSamples data, response status code and response headers
    def get_zone_samples_with_http_info(user_id, transaction_id, activity_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DailyActivityApi.get_zone_samples ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling DailyActivityApi.get_zone_samples"
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling DailyActivityApi.get_zone_samples"
      end
      # verify the required parameter 'activity_id' is set
      if @api_client.config.client_side_validation && activity_id.nil?
        fail ArgumentError, "Missing the required parameter 'activity_id' when calling DailyActivityApi.get_zone_samples"
      end
      # resource path
      local_var_path = '/v3/users/{user-id}/activity-transactions/{transaction-id}/activities/{activity-id}/zone-samples'.sub('{' + 'user-id' + '}', CGI.escape(user_id.to_s).gsub('%2F', '/')).sub('{' + 'transaction-id' + '}', CGI.escape(transaction_id.to_s).gsub('%2F', '/')).sub('{' + 'activity-id' + '}', CGI.escape(activity_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:return_type] || 'ActivityZoneSamples' 

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
        @api_client.config.logger.debug "API called: DailyActivityApi#get_zone_samples\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List activities
    # List new activity data. After successfully initiating a transaction, activity summaries included within it can be retrieved with the provided transactionId.
    # @param transaction_id [Integer] Transaction identifier
    # @param user_id [Integer] User identifier
    # @param [Hash] opts the optional parameters
    # @return [ActivityLog]
    def list_activities(transaction_id, user_id, opts = {})
      data, _status_code, _headers = list_activities_with_http_info(transaction_id, user_id, opts)
      data
    end

    # List activities
    # List new activity data. After successfully initiating a transaction, activity summaries included within it can be retrieved with the provided transactionId.
    # @param transaction_id [Integer] Transaction identifier
    # @param user_id [Integer] User identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(ActivityLog, Integer, Hash)>] ActivityLog data, response status code and response headers
    def list_activities_with_http_info(transaction_id, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DailyActivityApi.list_activities ...'
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling DailyActivityApi.list_activities"
      end
      pattern = Regexp.new(/[0-9]+/)
      if @api_client.config.client_side_validation && transaction_id !~ pattern
        fail ArgumentError, "invalid value for 'transaction_id' when calling DailyActivityApi.list_activities, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling DailyActivityApi.list_activities"
      end
      pattern = Regexp.new(/[0-9]+/)
      if @api_client.config.client_side_validation && user_id !~ pattern
        fail ArgumentError, "invalid value for 'user_id' when calling DailyActivityApi.list_activities, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/v3/users/{user-id}/activity-transactions/{transaction-id}'.sub('{' + 'transaction-id' + '}', CGI.escape(transaction_id.to_s).gsub('%2F', '/')).sub('{' + 'user-id' + '}', CGI.escape(user_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:return_type] || 'ActivityLog' 

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
        @api_client.config.logger.debug "API called: DailyActivityApi#list_activities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
