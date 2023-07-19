# OpenapiClient::PaymentLegDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the payment. | [optional] |
| **amount** | **Float** | The amount of the payment. | [optional] |
| **date_created** | **Integer** | The date and time, encoded into UNIX epoch timestamps. | [optional] |
| **reference** | **String** | The reference of the payment. | [optional] |
| **currency** | **String** | The currency of the payment. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentLegDto.new(
  id: 1432,
  amount: 100.32,
  date_created: 1566198657000,
  reference: 0x2321321,
  currency: ETH
)
```

