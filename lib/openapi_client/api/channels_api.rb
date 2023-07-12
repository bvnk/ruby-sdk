=begin
#BVNK API Endpoints

#The BVNK API is designed to facilitate seamless and secure transactions including payments, channels, and digital wallet transactions.

The version of the OpenAPI document: 1.0.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'cgi'

module OpenapiClient
  class ChannelsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Channel
    # Creates a channel that your end users can openly send payments to.
    # @param [Hash] opts the optional parameters
    # @option opts [MerchantChannelRequestDto] :merchant_channel_request_dto 
    # @return [MerchantChannelDto]
    def channel_create(opts = {})
      data, _status_code, _headers = channel_create_with_http_info(opts)
      data
    end

    # Create Channel
    # Creates a channel that your end users can openly send payments to.
    # @param [Hash] opts the optional parameters
    # @option opts [MerchantChannelRequestDto] :merchant_channel_request_dto 
    # @return [Array<(MerchantChannelDto, Integer, Hash)>] MerchantChannelDto data, response status code and response headers
    def channel_create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChannelsApi.channel_create ...'
      end
      # resource path
      local_var_path = '/api/v2/channel'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'merchant_channel_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'MerchantChannelDto'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Hawk']

      new_options = opts.merge(
        :operation => :"ChannelsApi.channel_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChannelsApi#channel_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Channels
    # Retrieves all channels related to a Merchant ID.
    # @param merchant_id [String] The merchant ID that the channels belong to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :offset Where to start fetching records.
    # @option opts [String] :max Maximum number of items in response.
    # @option opts [PaymentStatusDto] :sort The attribute used to sort the data
    # @option opts [String] :order Ordering direction
    # @return [Array<MerchantChannelDto>]
    def channel_list(merchant_id, opts = {})
      data, _status_code, _headers = channel_list_with_http_info(merchant_id, opts)
      data
    end

    # List Channels
    # Retrieves all channels related to a Merchant ID.
    # @param merchant_id [String] The merchant ID that the channels belong to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :offset Where to start fetching records.
    # @option opts [String] :max Maximum number of items in response.
    # @option opts [PaymentStatusDto] :sort The attribute used to sort the data
    # @option opts [String] :order Ordering direction
    # @return [Array<(Array<MerchantChannelDto>, Integer, Hash)>] Array<MerchantChannelDto> data, response status code and response headers
    def channel_list_with_http_info(merchant_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChannelsApi.channel_list ...'
      end
      # verify the required parameter 'merchant_id' is set
      if @api_client.config.client_side_validation && merchant_id.nil?
        fail ArgumentError, "Missing the required parameter 'merchant_id' when calling ChannelsApi.channel_list"
      end
      allowable_values = ["asc", "desc"]
      if @api_client.config.client_side_validation && opts[:'order'] && !allowable_values.include?(opts[:'order'])
        fail ArgumentError, "invalid value for \"order\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api/v2/channel'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'merchantId'] = merchant_id
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'max'] = opts[:'max'] if !opts[:'max'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<MerchantChannelDto>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Hawk']

      new_options = opts.merge(
        :operation => :"ChannelsApi.channel_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChannelsApi#channel_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Channel Payments
    # Retrieves a list of payments to a channel on a specific Merchant ID.
    # @param merchant_id [String] The Merchant ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status 
    # @option opts [String] :from_date From which date to start searching.
    # @option opts [String] :to_date At which date to stop searching.
    # @option opts [String] :offset Where to start fetching records.
    # @option opts [String] :max Maximum number of items in response.
    # @option opts [String] :order Ordering direction
    # @option opts [String] :q Can be UUID of the payment, reference, channel UUID, transaction hash, or wallet code.
    # @return [Array<MerchantChannelPaymentDto>]
    def channel_payment_list(merchant_id, opts = {})
      data, _status_code, _headers = channel_payment_list_with_http_info(merchant_id, opts)
      data
    end

    # List Channel Payments
    # Retrieves a list of payments to a channel on a specific Merchant ID.
    # @param merchant_id [String] The Merchant ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status 
    # @option opts [String] :from_date From which date to start searching.
    # @option opts [String] :to_date At which date to stop searching.
    # @option opts [String] :offset Where to start fetching records.
    # @option opts [String] :max Maximum number of items in response.
    # @option opts [String] :order Ordering direction
    # @option opts [String] :q Can be UUID of the payment, reference, channel UUID, transaction hash, or wallet code.
    # @return [Array<(Array<MerchantChannelPaymentDto>, Integer, Hash)>] Array<MerchantChannelPaymentDto> data, response status code and response headers
    def channel_payment_list_with_http_info(merchant_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChannelsApi.channel_payment_list ...'
      end
      # verify the required parameter 'merchant_id' is set
      if @api_client.config.client_side_validation && merchant_id.nil?
        fail ArgumentError, "Missing the required parameter 'merchant_id' when calling ChannelsApi.channel_payment_list"
      end
      allowable_values = ["DETECTED", "COMPLETE", "UNKNOWN"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      allowable_values = ["asc", "desc"]
      if @api_client.config.client_side_validation && opts[:'order'] && !allowable_values.include?(opts[:'order'])
        fail ArgumentError, "invalid value for \"order\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api/v2/channel/payment'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'merchantId'] = merchant_id
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'fromDate'] = opts[:'from_date'] if !opts[:'from_date'].nil?
      query_params[:'toDate'] = opts[:'to_date'] if !opts[:'to_date'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'max'] = opts[:'max'] if !opts[:'max'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<MerchantChannelPaymentDto>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Hawk']

      new_options = opts.merge(
        :operation => :"ChannelsApi.channel_payment_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChannelsApi#channel_payment_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Channel Payment
    # Retrieves a specific payment made into a channel.
    # @param uuid [String] The UUID of the payment you are querying.
    # @param [Hash] opts the optional parameters
    # @return [MerchantChannelPaymentDto]
    def channel_payment_read(uuid, opts = {})
      data, _status_code, _headers = channel_payment_read_with_http_info(uuid, opts)
      data
    end

    # Get Channel Payment
    # Retrieves a specific payment made into a channel.
    # @param uuid [String] The UUID of the payment you are querying.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MerchantChannelPaymentDto, Integer, Hash)>] MerchantChannelPaymentDto data, response status code and response headers
    def channel_payment_read_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChannelsApi.channel_payment_read ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling ChannelsApi.channel_payment_read"
      end
      # resource path
      local_var_path = '/api/v2/channel/payment/{uuid}'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MerchantChannelPaymentDto'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Hawk']

      new_options = opts.merge(
        :operation => :"ChannelsApi.channel_payment_read",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChannelsApi#channel_payment_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Channel
    # Retrieves a specific channel by UUID.
    # @param uuid [String] The UUID of the channel you are querying
    # @param [Hash] opts the optional parameters
    # @return [MerchantChannelDto]
    def channel_read(uuid, opts = {})
      data, _status_code, _headers = channel_read_with_http_info(uuid, opts)
      data
    end

    # Get Channel
    # Retrieves a specific channel by UUID.
    # @param uuid [String] The UUID of the channel you are querying
    # @param [Hash] opts the optional parameters
    # @return [Array<(MerchantChannelDto, Integer, Hash)>] MerchantChannelDto data, response status code and response headers
    def channel_read_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChannelsApi.channel_read ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling ChannelsApi.channel_read"
      end
      # resource path
      local_var_path = '/api/v2/channel/{uuid}'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MerchantChannelDto'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Hawk']

      new_options = opts.merge(
        :operation => :"ChannelsApi.channel_read",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChannelsApi#channel_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
