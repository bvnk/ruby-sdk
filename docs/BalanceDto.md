# OpenapiClient::BalanceDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | [**CurrencyDto**](CurrencyDto.md) |  | [optional] |
| **wallet_id** | **Integer** | The ID of the wallet. | [optional] |
| **available** | **Float** | The available balance on the wallet. | [optional] |
| **reserved** | **Float** | The reserved balance on the wallet. | [optional] |
| **converted_available** | **Float** | The converted available balance on the wallet. | [optional] |
| **converted_reserved** | **Float** | The converted reserved balance on the wallet. | [optional] |
| **total** | **Float** | The total amount on the wallet. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::BalanceDto.new(
  currency: null,
  wallet_id: 255861,
  available: 100.03,
  reserved: 1.0,
  converted_available: 100.0,
  converted_reserved: 104.0,
  total: 101.03
)
```

