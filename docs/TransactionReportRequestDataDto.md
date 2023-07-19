# OpenapiClient::TransactionReportRequestDataDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of report. | [optional] |
| **external_processing** | **String** |  | [optional] |
| **wallet_id** | **Integer** | The wallet ID fo the report. | [optional] |
| **transaction_type** | **String** | The transaction type. | [optional] |
| **from_date** | **String** | The from date of the report. | [optional] |
| **to_date** | **String** | The to date of the report. | [optional] |
| **format** | **String** | The format of the report. | [optional] |
| **language_tag** | **String** | The language tag of the report. | [optional] |
| **category** | **Integer** | The category of the report. | [optional] |
| **account_name** | **String** | The account name. | [optional] |
| **include** | **String** |  | [optional] |
| **exclude** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TransactionReportRequestDataDto.new(
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

