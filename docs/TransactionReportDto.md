# OpenapiClient::TransactionReportDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the transaction request. | [optional] |
| **uuid** | **String** | The UUID of the transaction report. | [optional] |
| **date_created** | **Integer** | The date and time, encoded into UNIX epoch timestamps. | [optional] |
| **last_updated** | **Integer** | The date and time, encoded into UNIX epoch timestamps. | [optional] |
| **expiry_date** | **Integer** | The date and time, encoded into UNIX epoch timestamps. | [optional] |
| **status** | **String** | The status of the transaction report. | [optional] |
| **type** | **String** | The type of the report. | [optional] |
| **request_data** | [**TransactionReportRequestDataDto**](TransactionReportRequestDataDto.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TransactionReportDto.new(
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

