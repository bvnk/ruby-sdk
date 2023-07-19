# OpenapiClient::ChannelsApi

All URIs are relative to *https://api.sandbox.bvnk.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**channel_create**](ChannelsApi.md#channel_create) | **POST** /api/v2/channel | Create Channel |
| [**channel_list**](ChannelsApi.md#channel_list) | **GET** /api/v2/channel | List Channels |
| [**channel_payment_list**](ChannelsApi.md#channel_payment_list) | **GET** /api/v2/channel/payment | List Channel Payments |
| [**channel_payment_read**](ChannelsApi.md#channel_payment_read) | **GET** /api/v2/channel/payment/{uuid} | Get Channel Payment |
| [**channel_read**](ChannelsApi.md#channel_read) | **GET** /api/v2/channel/{uuid} | Get Channel |


## channel_create

> <MerchantChannelDto> channel_create(opts)

Create Channel

Creates a channel that your end users can openly send payments to.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: Hawk
  config.api_key['Hawk'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Hawk'] = 'Bearer'
end

api_instance = OpenapiClient::ChannelsApi.new
opts = {
  merchant_channel_request_dto: OpenapiClient::MerchantChannelRequestDto.new({merchant_id: 'merchant_id_example', pay_currency: 'pay_currency_example', display_currency: 'display_currency_example', reference: 'reference_example'}) # MerchantChannelRequestDto | 
}

begin
  # Create Channel
  result = api_instance.channel_create(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ChannelsApi->channel_create: #{e}"
end
```

#### Using the channel_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MerchantChannelDto>, Integer, Hash)> channel_create_with_http_info(opts)

```ruby
begin
  # Create Channel
  data, status_code, headers = api_instance.channel_create_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MerchantChannelDto>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ChannelsApi->channel_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_channel_request_dto** | [**MerchantChannelRequestDto**](MerchantChannelRequestDto.md) |  | [optional] |

### Return type

[**MerchantChannelDto**](MerchantChannelDto.md)

### Authorization

[Hawk](../README.md#Hawk)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## channel_list

> <Array<MerchantChannelDto>> channel_list(merchant_id, opts)

List Channels

Retrieves all channels related to a Merchant ID.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: Hawk
  config.api_key['Hawk'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Hawk'] = 'Bearer'
end

api_instance = OpenapiClient::ChannelsApi.new
merchant_id = 'merchant_id_example' # String | The merchant ID that the channels belong to
opts = {
  offset: '0', # String | Where to start fetching records.
  max: '10', # String | Maximum number of items in response.
  sort: OpenapiClient::PaymentStatusDto::PENDING, # PaymentStatusDto | The attribute used to sort the data
  order: 'asc' # String | Ordering direction
}

begin
  # List Channels
  result = api_instance.channel_list(merchant_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ChannelsApi->channel_list: #{e}"
end
```

#### Using the channel_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MerchantChannelDto>>, Integer, Hash)> channel_list_with_http_info(merchant_id, opts)

```ruby
begin
  # List Channels
  data, status_code, headers = api_instance.channel_list_with_http_info(merchant_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MerchantChannelDto>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ChannelsApi->channel_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_id** | **String** | The merchant ID that the channels belong to | [default to &#39;c02153ae-8ac8-4222-80e8-b2b2af85bd78&#39;] |
| **offset** | **String** | Where to start fetching records. | [optional] |
| **max** | **String** | Maximum number of items in response. | [optional] |
| **sort** | [**PaymentStatusDto**](.md) | The attribute used to sort the data | [optional] |
| **order** | **String** | Ordering direction | [optional] |

### Return type

[**Array&lt;MerchantChannelDto&gt;**](MerchantChannelDto.md)

### Authorization

[Hawk](../README.md#Hawk)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## channel_payment_list

> <Array<MerchantChannelPaymentDto>> channel_payment_list(merchant_id, opts)

List Channel Payments

Retrieves a list of payments to a channel on a specific Merchant ID.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: Hawk
  config.api_key['Hawk'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Hawk'] = 'Bearer'
end

api_instance = OpenapiClient::ChannelsApi.new
merchant_id = 'merchant_id_example' # String | The Merchant ID
opts = {
  status: 'DETECTED', # String | 
  from_date: '2023-03-05', # String | From which date to start searching.
  to_date: '2023-05-03', # String | At which date to stop searching.
  offset: '0', # String | Where to start fetching records.
  max: '10', # String | Maximum number of items in response.
  order: 'asc', # String | Ordering direction
  q: 'q_example' # String | Can be UUID of the payment, reference, channel UUID, transaction hash, or wallet code.
}

begin
  # List Channel Payments
  result = api_instance.channel_payment_list(merchant_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ChannelsApi->channel_payment_list: #{e}"
end
```

#### Using the channel_payment_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MerchantChannelPaymentDto>>, Integer, Hash)> channel_payment_list_with_http_info(merchant_id, opts)

```ruby
begin
  # List Channel Payments
  data, status_code, headers = api_instance.channel_payment_list_with_http_info(merchant_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MerchantChannelPaymentDto>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ChannelsApi->channel_payment_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_id** | **String** | The Merchant ID | [default to &#39;c02153ae-8ac8-4222-80e8-b2b2af85bd78&#39;] |
| **status** | **String** |  | [optional] |
| **from_date** | **String** | From which date to start searching. | [optional] |
| **to_date** | **String** | At which date to stop searching. | [optional] |
| **offset** | **String** | Where to start fetching records. | [optional] |
| **max** | **String** | Maximum number of items in response. | [optional] |
| **order** | **String** | Ordering direction | [optional] |
| **q** | **String** | Can be UUID of the payment, reference, channel UUID, transaction hash, or wallet code. | [optional] |

### Return type

[**Array&lt;MerchantChannelPaymentDto&gt;**](MerchantChannelPaymentDto.md)

### Authorization

[Hawk](../README.md#Hawk)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## channel_payment_read

> <MerchantChannelPaymentDto> channel_payment_read(uuid)

Get Channel Payment

Retrieves a specific payment made into a channel.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: Hawk
  config.api_key['Hawk'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Hawk'] = 'Bearer'
end

api_instance = OpenapiClient::ChannelsApi.new
uuid = 'uuid_example' # String | The UUID of the payment you are querying.

begin
  # Get Channel Payment
  result = api_instance.channel_payment_read(uuid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ChannelsApi->channel_payment_read: #{e}"
end
```

#### Using the channel_payment_read_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MerchantChannelPaymentDto>, Integer, Hash)> channel_payment_read_with_http_info(uuid)

```ruby
begin
  # Get Channel Payment
  data, status_code, headers = api_instance.channel_payment_read_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MerchantChannelPaymentDto>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ChannelsApi->channel_payment_read_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | The UUID of the payment you are querying. | [default to &#39;c0dc9c14-0312-4a6b-a1a3-a6dcebdcc8a4&#39;] |

### Return type

[**MerchantChannelPaymentDto**](MerchantChannelPaymentDto.md)

### Authorization

[Hawk](../README.md#Hawk)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## channel_read

> <MerchantChannelDto> channel_read(uuid)

Get Channel

Retrieves a specific channel by UUID.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: Hawk
  config.api_key['Hawk'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Hawk'] = 'Bearer'
end

api_instance = OpenapiClient::ChannelsApi.new
uuid = 'uuid_example' # String | The UUID of the channel you are querying

begin
  # Get Channel
  result = api_instance.channel_read(uuid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ChannelsApi->channel_read: #{e}"
end
```

#### Using the channel_read_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MerchantChannelDto>, Integer, Hash)> channel_read_with_http_info(uuid)

```ruby
begin
  # Get Channel
  data, status_code, headers = api_instance.channel_read_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MerchantChannelDto>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ChannelsApi->channel_read_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | The UUID of the channel you are querying | [default to &#39;9d1f67f2-a647-404b-9b02-247c77be81d0&#39;] |

### Return type

[**MerchantChannelDto**](MerchantChannelDto.md)

### Authorization

[Hawk](../README.md#Hawk)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

