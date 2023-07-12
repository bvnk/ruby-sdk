# OpenapiClient::WalletsApi

All URIs are relative to *https://api.sandbox.bvnk.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**wallet_balance_list**](WalletsApi.md#wallet_balance_list) | **GET** /api/wallet/balances | List Wallet Balances |
| [**wallet_create**](WalletsApi.md#wallet_create) | **POST** /api/wallet | Create Wallet |
| [**wallet_list**](WalletsApi.md#wallet_list) | **GET** /api/wallet | List Wallets |
| [**wallet_read**](WalletsApi.md#wallet_read) | **GET** /api/wallet/{id} | Get Wallet |
| [**wallet_transaction_report**](WalletsApi.md#wallet_transaction_report) | **GET** /api/transaction/report | Transactions Report |


## wallet_balance_list

> <Array<BalanceDto>> wallet_balance_list(opts)

List Wallet Balances

Retrieves the balances of your wallets on platform.

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

api_instance = OpenapiClient::WalletsApi.new
opts = {
  date: '2020-03-17' # String | Date at to retrieve balances.
}

begin
  # List Wallet Balances
  result = api_instance.wallet_balance_list(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WalletsApi->wallet_balance_list: #{e}"
end
```

#### Using the wallet_balance_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BalanceDto>>, Integer, Hash)> wallet_balance_list_with_http_info(opts)

```ruby
begin
  # List Wallet Balances
  data, status_code, headers = api_instance.wallet_balance_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BalanceDto>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WalletsApi->wallet_balance_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **String** | Date at to retrieve balances. | [optional] |

### Return type

[**Array&lt;BalanceDto&gt;**](BalanceDto.md)

### Authorization

[Hawk](../README.md#Hawk)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## wallet_create

> <WalletDto> wallet_create(opts)

Create Wallet

Creates a wallet on the BVNK platform.

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

api_instance = OpenapiClient::WalletsApi.new
opts = {
  wallet_request_dto: OpenapiClient::WalletRequestDto.new({currency: 'currency_example', description: 'description_example'}) # WalletRequestDto | 
}

begin
  # Create Wallet
  result = api_instance.wallet_create(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WalletsApi->wallet_create: #{e}"
end
```

#### Using the wallet_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletDto>, Integer, Hash)> wallet_create_with_http_info(opts)

```ruby
begin
  # Create Wallet
  data, status_code, headers = api_instance.wallet_create_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletDto>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WalletsApi->wallet_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wallet_request_dto** | [**WalletRequestDto**](WalletRequestDto.md) |  | [optional] |

### Return type

[**WalletDto**](WalletDto.md)

### Authorization

[Hawk](../README.md#Hawk)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## wallet_list

> <Array<WalletDto>> wallet_list(opts)

List Wallets

Retrieves a list of wallets on your account.

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

api_instance = OpenapiClient::WalletsApi.new
opts = {
  offset: 56, # Integer | Where to start fetching records.
  max: 56 # Integer | Maximum number of items in response.
}

begin
  # List Wallets
  result = api_instance.wallet_list(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WalletsApi->wallet_list: #{e}"
end
```

#### Using the wallet_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<WalletDto>>, Integer, Hash)> wallet_list_with_http_info(opts)

```ruby
begin
  # List Wallets
  data, status_code, headers = api_instance.wallet_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<WalletDto>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WalletsApi->wallet_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Where to start fetching records. | [optional] |
| **max** | **Integer** | Maximum number of items in response. | [optional][default to 10] |

### Return type

[**Array&lt;WalletDto&gt;**](WalletDto.md)

### Authorization

[Hawk](../README.md#Hawk)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## wallet_read

> <WalletDto> wallet_read(id)

Get Wallet

Retrieves a specific wallet.

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

api_instance = OpenapiClient::WalletsApi.new
id = 789 # Integer | The ID of the wallet that you want to retrieve.

begin
  # Get Wallet
  result = api_instance.wallet_read(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WalletsApi->wallet_read: #{e}"
end
```

#### Using the wallet_read_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletDto>, Integer, Hash)> wallet_read_with_http_info(id)

```ruby
begin
  # Get Wallet
  data, status_code, headers = api_instance.wallet_read_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletDto>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WalletsApi->wallet_read_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the wallet that you want to retrieve. | [default to 255861] |

### Return type

[**WalletDto**](WalletDto.md)

### Authorization

[Hawk](../README.md#Hawk)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## wallet_transaction_report

> <Array<TransactionReportDto>> wallet_transaction_report(opts)

Transactions Report

Report all transactions from wallet in specified format. Report will be generated and sent to main account email in the specified format.

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

api_instance = OpenapiClient::WalletsApi.new
opts = {
  wallet_id: 789, # Integer | Date at to retrieve balances.
  from_date: 'from_date_example', # String | Export range from date in format 'YYYY-MM-dd'.
  to_date: 'to_date_example', # String | Export range to date in format 'YYYY-MM-dd'.
  format: 'format_example', # String | 'json' - json format, 'csv' - csv format
  transaction_type: 'transaction_type_example' # String | Transaction type code
}

begin
  # Transactions Report
  result = api_instance.wallet_transaction_report(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WalletsApi->wallet_transaction_report: #{e}"
end
```

#### Using the wallet_transaction_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TransactionReportDto>>, Integer, Hash)> wallet_transaction_report_with_http_info(opts)

```ruby
begin
  # Transactions Report
  data, status_code, headers = api_instance.wallet_transaction_report_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TransactionReportDto>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WalletsApi->wallet_transaction_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wallet_id** | **Integer** | Date at to retrieve balances. | [optional][default to 255861] |
| **from_date** | **String** | Export range from date in format &#39;YYYY-MM-dd&#39;. | [optional][default to &#39;2022-09-17&#39;] |
| **to_date** | **String** | Export range to date in format &#39;YYYY-MM-dd&#39;. | [optional][default to &#39;2023-03-17&#39;] |
| **format** | **String** | &#39;json&#39; - json format, &#39;csv&#39; - csv format | [optional][default to &#39;csv&#39;] |
| **transaction_type** | **String** | Transaction type code | [optional] |

### Return type

[**Array&lt;TransactionReportDto&gt;**](TransactionReportDto.md)

### Authorization

[Hawk](../README.md#Hawk)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

