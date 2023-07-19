# OpenapiClient::TransactionReportRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **external_processing** | **String** |  | [optional] |
| **wallet_id** | **Integer** |  | [optional] |
| **transaction_type** | **String** |  | [optional] |
| **from_date** | **String** |  | [optional] |
| **to_date** | **String** |  | [optional] |
| **format** | **String** |  | [optional] |
| **language_tag** | **String** |  | [optional] |
| **category** | **Integer** |  | [optional] |
| **account_name** | **String** |  | [optional] |
| **include** | **String** |  | [optional] |
| **exclude** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TransactionReportRequestData.new(
  type: transactions,
  external_processing: null,
  wallet_id: 504841,
  transaction_type: null,
  from_date: 2023-03-01,
  to_date: 2023-06-30,
  format: CSV,
  language_tag: en-US,
  category: 0,
  account_name: null,
  include: null,
  exclude: null
)
```

