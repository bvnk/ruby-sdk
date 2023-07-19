# OpenapiClient::PaymentsApi

All URIs are relative to *https://api.sandbox.bvnk.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**payment_create**](PaymentsApi.md#payment_create) | **POST** /api/v1/pay/summary | Create payment |
| [**payment_list**](PaymentsApi.md#payment_list) | **GET** /api/v1/pay/summary | List Payments |
| [**payment_out_validate**](PaymentsApi.md#payment_out_validate) | **PUT** /api/v1/pay/validate | Validate Address |
| [**payment_read**](PaymentsApi.md#payment_read) | **GET** /api/v1/pay/{uuid}/summary | Get Payment |


## payment_create

> <SummaryPaymentDto> payment_create(pay_request_dto)

Create payment

Creates a payment, either type IN or type OUT.

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

api_instance = OpenapiClient::PaymentsApi.new
pay_request_dto = OpenapiClient::PayRequestDto.new({merchant_id: 'merchant_id_example', amount: 3.56, currency: 'currency_example', reference: 'reference_example', type: OpenapiClient::DirectionDto::IN}) # PayRequestDto | 

begin
  # Create payment
  result = api_instance.payment_create(pay_request_dto)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->payment_create: #{e}"
end
```

#### Using the payment_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SummaryPaymentDto>, Integer, Hash)> payment_create_with_http_info(pay_request_dto)

```ruby
begin
  # Create payment
  data, status_code, headers = api_instance.payment_create_with_http_info(pay_request_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SummaryPaymentDto>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->payment_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_request_dto** | [**PayRequestDto**](PayRequestDto.md) |  |  |

### Return type

[**SummaryPaymentDto**](SummaryPaymentDto.md)

### Authorization

[Hawk](../README.md#Hawk)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## payment_list

> <Array<SummaryPaymentDto>> payment_list(merchant_id, opts)

List Payments

Retrieves a list of payments on a specific Merchant ID.

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

api_instance = OpenapiClient::PaymentsApi.new
merchant_id = 'merchant_id_example' # String | The merchant ID as a UUID.
opts = {
  customer_reference: 'REF123', # String | The customer reference.
  payment_external_id: '5C8D8D78-366A-4AFB-B658-A64CE543C5DB', # String | The merchant payment uuid.
  from_date: '2023-03-30', # String | The start date.
  to_date: '2023-03-30', # String | The end date.
  offset: 0, # Float | Where to start fetching records.
  max: 20, # Float | Maximum number of items in response.
  status: OpenapiClient::PaymentStatusDto::PENDING, # PaymentStatusDto | 
  order: 'asc' # String | Ordering direction.
}

begin
  # List Payments
  result = api_instance.payment_list(merchant_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->payment_list: #{e}"
end
```

#### Using the payment_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SummaryPaymentDto>>, Integer, Hash)> payment_list_with_http_info(merchant_id, opts)

```ruby
begin
  # List Payments
  data, status_code, headers = api_instance.payment_list_with_http_info(merchant_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SummaryPaymentDto>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->payment_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_id** | **String** | The merchant ID as a UUID. | [default to &#39;5C8D8D78-366A-4AFB-B658-A64CE543C5DB&#39;] |
| **customer_reference** | **String** | The customer reference. | [optional] |
| **payment_external_id** | **String** | The merchant payment uuid. | [optional] |
| **from_date** | **String** | The start date. | [optional] |
| **to_date** | **String** | The end date. | [optional] |
| **offset** | **Float** | Where to start fetching records. | [optional] |
| **max** | **Float** | Maximum number of items in response. | [optional] |
| **status** | [**PaymentStatusDto**](.md) |  | [optional] |
| **order** | **String** | Ordering direction. | [optional] |

### Return type

[**Array&lt;SummaryPaymentDto&gt;**](SummaryPaymentDto.md)

### Authorization

[Hawk](../README.md#Hawk)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## payment_out_validate

> payment_out_validate(pay_out_detail_dto)

Validate Address

Validates that a crypto address is correct.  Use this endpoint to validate that an address exists, is correctly formatted, and includes all the required data. This endpoint can help prevent your end users losing funds when submitting a payout.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::PaymentsApi.new
pay_out_detail_dto = OpenapiClient::PayOutDetailDto.new({code: 'crypto', currency: 'ETH', address: '0xb794f5ea0ba39494ce839613fffba74279579268'}) # PayOutDetailDto | 

begin
  # Validate Address
  api_instance.payment_out_validate(pay_out_detail_dto)
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->payment_out_validate: #{e}"
end
```

#### Using the payment_out_validate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> payment_out_validate_with_http_info(pay_out_detail_dto)

```ruby
begin
  # Validate Address
  data, status_code, headers = api_instance.payment_out_validate_with_http_info(pay_out_detail_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->payment_out_validate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_out_detail_dto** | [**PayOutDetailDto**](PayOutDetailDto.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## payment_read

> <SummaryPaymentDto> payment_read(uuid)

Get Payment

Retrieves details of a specific payment using the UUID of the payment.

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

api_instance = OpenapiClient::PaymentsApi.new
uuid = 'uuid_example' # String | The payment UUID.

begin
  # Get Payment
  result = api_instance.payment_read(uuid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->payment_read: #{e}"
end
```

#### Using the payment_read_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SummaryPaymentDto>, Integer, Hash)> payment_read_with_http_info(uuid)

```ruby
begin
  # Get Payment
  data, status_code, headers = api_instance.payment_read_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SummaryPaymentDto>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->payment_read_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | The payment UUID. | [default to &#39;5C8D8D78-366A-4AFB-B658-A64CE543C5DB&#39;] |

### Return type

[**SummaryPaymentDto**](SummaryPaymentDto.md)

### Authorization

[Hawk](../README.md#Hawk)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

