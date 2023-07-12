# OpenapiClient::TransactionReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **uuid** | **String** |  | [optional] |
| **date_created** | **Integer** |  | [optional] |
| **last_updated** | **Integer** |  | [optional] |
| **expiry_date** | **Integer** |  | [optional] |
| **status** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **request_data** | [**TransactionReportRequestData**](TransactionReportRequestData.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TransactionReport.new(
  id: 594,
  uuid: 9d1f67f2-a647-404b-9b02-247c77be81d0,
  date_created: 1631619489000,
  last_updated: 1631619489000,
  expiry_date: 1631619489000,
  status: PENDING,
  type: transactions,
  request_data: null
)
```

