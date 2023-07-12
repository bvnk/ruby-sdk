# OpenapiClient::PaymentLeg

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **amount** | **Float** |  | [optional] |
| **date_created** | **Integer** |  | [optional] |
| **reference** | **String** |  | [optional] |
| **currency** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentLeg.new(
  id: 1432,
  amount: 100.32,
  date_created: 1566198657000,
  reference: 0x2321321,
  currency: ETH
)
```

