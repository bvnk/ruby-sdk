# OpenapiClient::TradingAndConversionsApi

All URIs are relative to *https://api.sandbox.bvnk.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**quote_accept**](TradingAndConversionsApi.md#quote_accept) | **PUT** /api/v1/quote/accept/{uuid} | Accept Quote |
| [**quote_create**](TradingAndConversionsApi.md#quote_create) | **POST** /api/v1/quote | Create Quote |
| [**quote_list**](TradingAndConversionsApi.md#quote_list) | **GET** /api/v1/quote/{merchantId} | List Quotes |
| [**quote_read**](TradingAndConversionsApi.md#quote_read) | **GET** /api/v1/quote/{uuid} | Get Quote |


## quote_accept

> <AcceptedQuoteDto> quote_accept(uuid)

Accept Quote

Executes a quote.

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

api_instance = OpenapiClient::TradingAndConversionsApi.new
uuid = 'uuid_example' # String | The quote UUID you are accepting.

begin
  # Accept Quote
  result = api_instance.quote_accept(uuid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingAndConversionsApi->quote_accept: #{e}"
end
```

#### Using the quote_accept_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedQuoteDto>, Integer, Hash)> quote_accept_with_http_info(uuid)

```ruby
begin
  # Accept Quote
  data, status_code, headers = api_instance.quote_accept_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedQuoteDto>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingAndConversionsApi->quote_accept_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | The quote UUID you are accepting. | [default to &#39;5dc4e061-31c6-4b96-8c4d-0ea984aece0b&#39;] |

### Return type

[**AcceptedQuoteDto**](AcceptedQuoteDto.md)

### Authorization

[Hawk](../README.md#Hawk)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## quote_create

> <QuoteDto> quote_create(opts)

Create Quote

Creates a quote to convert between wallets.

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

api_instance = OpenapiClient::TradingAndConversionsApi.new
opts = {
  estimate: true, # Boolean | Create estimate quote
  quote_request_dto: OpenapiClient::QuoteRequestDto.new({from: 'from_example', to: 'to_example', from_wallet: 3.56, use_minimum: false, use_maximum: false, to_wallet: 3.56, amount_in: 3.56, pay_in_method: 'pay_in_method_example', pay_out_method: 'pay_out_method_example'}) # QuoteRequestDto | 
}

begin
  # Create Quote
  result = api_instance.quote_create(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingAndConversionsApi->quote_create: #{e}"
end
```

#### Using the quote_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QuoteDto>, Integer, Hash)> quote_create_with_http_info(opts)

```ruby
begin
  # Create Quote
  data, status_code, headers = api_instance.quote_create_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QuoteDto>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingAndConversionsApi->quote_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **estimate** | **Boolean** | Create estimate quote | [optional][default to false] |
| **quote_request_dto** | [**QuoteRequestDto**](QuoteRequestDto.md) |  | [optional] |

### Return type

[**QuoteDto**](QuoteDto.md)

### Authorization

[Hawk](../README.md#Hawk)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## quote_list

> <Array<QuoteDto>> quote_list(merchant_id)

List Quotes

Retrieves all quotes on a specific Merchant ID.

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

api_instance = OpenapiClient::TradingAndConversionsApi.new
merchant_id = 'merchant_id_example' # String | Merchant ID you are retrieving quotes from.

begin
  # List Quotes
  result = api_instance.quote_list(merchant_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingAndConversionsApi->quote_list: #{e}"
end
```

#### Using the quote_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<QuoteDto>>, Integer, Hash)> quote_list_with_http_info(merchant_id)

```ruby
begin
  # List Quotes
  data, status_code, headers = api_instance.quote_list_with_http_info(merchant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<QuoteDto>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingAndConversionsApi->quote_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_id** | **String** | Merchant ID you are retrieving quotes from. | [default to &#39;0a12a214-1619-43fa-9be1-0029f6a440a0&#39;] |

### Return type

[**Array&lt;QuoteDto&gt;**](QuoteDto.md)

### Authorization

[Hawk](../README.md#Hawk)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## quote_read

> <QuoteDto> quote_read(uuid)

Get Quote

Retrieves a specific quote.

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

api_instance = OpenapiClient::TradingAndConversionsApi.new
uuid = 'uuid_example' # String | UUID of the quote you are retrieving.

begin
  # Get Quote
  result = api_instance.quote_read(uuid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingAndConversionsApi->quote_read: #{e}"
end
```

#### Using the quote_read_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QuoteDto>, Integer, Hash)> quote_read_with_http_info(uuid)

```ruby
begin
  # Get Quote
  data, status_code, headers = api_instance.quote_read_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QuoteDto>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingAndConversionsApi->quote_read_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | UUID of the quote you are retrieving. | [default to &#39;0a12a214-1619-43fa-9be1-0029f6a440a0&#39;] |

### Return type

[**QuoteDto**](QuoteDto.md)

### Authorization

[Hawk](../README.md#Hawk)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

