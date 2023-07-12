# OpenapiClient::MerchantIDsApi

All URIs are relative to *https://api.sandbox.bvnk.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**merchant_id_create**](MerchantIDsApi.md#merchant_id_create) | **POST** /api/v1/merchant | Create Merchant ID |
| [**merchant_id_list**](MerchantIDsApi.md#merchant_id_list) | **GET** /api/v1/merchant | List Merchant IDs |


## merchant_id_create

> <MerchantDto> merchant_id_create(opts)

Create Merchant ID

Generate a Merchant ID for your account to process pay-ins and pay-outs through our API.  A Merchant ID is essential as it designates the account wallet where incoming pay-ins will be settled. For instance, if a Merchant ID is associated with a EUR wallet ID, any incoming USDT payment will be automatically converted to EUR and deposited in the designated EUR wallet.  Vice versa, any outgoing USDT payment will be automatically converted and withdrawn from the designated EUR wallet.  For further information, please visit https://docs.bvnk.com/docs/creating-your-first-merchant to learn more about creating your first Merchant ID.

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

api_instance = OpenapiClient::MerchantIDsApi.new
opts = {
  merchant_id_create_request: OpenapiClient::MerchantIdCreateRequest.new({display_name: 'display_name_example', wallet: OpenapiClient::MerchantIdCreateRequestWallet.new}) # MerchantIdCreateRequest | 
}

begin
  # Create Merchant ID
  result = api_instance.merchant_id_create(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MerchantIDsApi->merchant_id_create: #{e}"
end
```

#### Using the merchant_id_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MerchantDto>, Integer, Hash)> merchant_id_create_with_http_info(opts)

```ruby
begin
  # Create Merchant ID
  data, status_code, headers = api_instance.merchant_id_create_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MerchantDto>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MerchantIDsApi->merchant_id_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_id_create_request** | [**MerchantIdCreateRequest**](MerchantIdCreateRequest.md) |  | [optional] |

### Return type

[**MerchantDto**](MerchantDto.md)

### Authorization

[Hawk](../README.md#Hawk)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## merchant_id_list

> <Array<MerchantDto>> merchant_id_list

List Merchant IDs

Retrieves merchant IDs setup on your account.

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

api_instance = OpenapiClient::MerchantIDsApi.new

begin
  # List Merchant IDs
  result = api_instance.merchant_id_list
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MerchantIDsApi->merchant_id_list: #{e}"
end
```

#### Using the merchant_id_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MerchantDto>>, Integer, Hash)> merchant_id_list_with_http_info

```ruby
begin
  # List Merchant IDs
  data, status_code, headers = api_instance.merchant_id_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MerchantDto>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MerchantIDsApi->merchant_id_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;MerchantDto&gt;**](MerchantDto.md)

### Authorization

[Hawk](../README.md#Hawk)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

