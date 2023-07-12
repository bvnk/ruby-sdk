# OpenapiClient::CurrenciesApi

All URIs are relative to *https://api.sandbox.bvnk.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_currencies_crypto**](CurrenciesApi.md#list_currencies_crypto) | **GET** /api/currency/crypto | List Crypto Currencies |
| [**list_currencies_deposit**](CurrenciesApi.md#list_currencies_deposit) | **GET** /api/currency/deposit | List Wallet Currencies |
| [**list_currencies_fiat**](CurrenciesApi.md#list_currencies_fiat) | **GET** /api/currency/fiat | List Fiat Currencies |


## list_currencies_crypto

> <Array<CurrencyDto>> list_currencies_crypto(opts)

List Crypto Currencies

Retrieves a list of all cryptocurrencies available on the BVNK platform. This list represents cryptocurrencies that end users can select whilst making a payment.  For sandbox, only Ethereum (ETH) is fully functional.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurrenciesApi.new
opts = {
  offset: 8.14, # Float | Where to start fetching records.
  max: 8.14, # Float | Maximum number of items in response.
  allow_deposits: true # Boolean | Only list currencies that allow deposits.
}

begin
  # List Crypto Currencies
  result = api_instance.list_currencies_crypto(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurrenciesApi->list_currencies_crypto: #{e}"
end
```

#### Using the list_currencies_crypto_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CurrencyDto>>, Integer, Hash)> list_currencies_crypto_with_http_info(opts)

```ruby
begin
  # List Crypto Currencies
  data, status_code, headers = api_instance.list_currencies_crypto_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CurrencyDto>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurrenciesApi->list_currencies_crypto_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Float** | Where to start fetching records. | [optional][default to 0] |
| **max** | **Float** | Maximum number of items in response. | [optional][default to 200] |
| **allow_deposits** | **Boolean** | Only list currencies that allow deposits. | [optional][default to false] |

### Return type

[**Array&lt;CurrencyDto&gt;**](CurrencyDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_currencies_deposit

> <Array<CurrencyDto>> list_currencies_deposit(opts)

List Wallet Currencies

These are the currencies that can be used to create a new wallet.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurrenciesApi.new
opts = {
  offset: 8.14, # Float | Where to start fetching records.
  max: 8.14 # Float | Maximum number of items in response.
}

begin
  # List Wallet Currencies
  result = api_instance.list_currencies_deposit(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurrenciesApi->list_currencies_deposit: #{e}"
end
```

#### Using the list_currencies_deposit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CurrencyDto>>, Integer, Hash)> list_currencies_deposit_with_http_info(opts)

```ruby
begin
  # List Wallet Currencies
  data, status_code, headers = api_instance.list_currencies_deposit_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CurrencyDto>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurrenciesApi->list_currencies_deposit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Float** | Where to start fetching records. | [optional][default to 0] |
| **max** | **Float** | Maximum number of items in response. | [optional][default to 200] |

### Return type

[**Array&lt;CurrencyDto&gt;**](CurrencyDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_currencies_fiat

> <Array<CurrencyFiatDto>> list_currencies_fiat(opts)

List Fiat Currencies

Retrieves a list of all display fiat currencies available on BVNK's Crypto Payments API. This list refers to currencies merchants can display on a payment page to an end user. It does not represent the list of currencies that can be held on the platform in wallets.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurrenciesApi.new
opts = {
  offset: 8.14, # Float | Where to start fetching records.
  max: 8.14 # Float | Maximum number of items in response.
}

begin
  # List Fiat Currencies
  result = api_instance.list_currencies_fiat(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurrenciesApi->list_currencies_fiat: #{e}"
end
```

#### Using the list_currencies_fiat_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CurrencyFiatDto>>, Integer, Hash)> list_currencies_fiat_with_http_info(opts)

```ruby
begin
  # List Fiat Currencies
  data, status_code, headers = api_instance.list_currencies_fiat_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CurrencyFiatDto>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurrenciesApi->list_currencies_fiat_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Float** | Where to start fetching records. | [optional][default to 0] |
| **max** | **Float** | Maximum number of items in response. | [optional][default to 200] |

### Return type

[**Array&lt;CurrencyFiatDto&gt;**](CurrencyFiatDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

