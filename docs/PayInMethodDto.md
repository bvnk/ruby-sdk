# OpenapiClient::PayInMethodDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID fo the pay in method. | [optional] |
| **code** | **String** | The code of the payin. | [optional] |
| **settlement_currency** | **String** | The settlement currency of the pay in. | [optional] |
| **requested_currency** | **String** | The requested currency of the pay in. | [optional] |
| **estimated_exchange_rate** | **Float** | The estimated exchange rate of the pay in. | [optional] |
| **account_methods** | [**Array&lt;AccountMethodDto&gt;**](AccountMethodDto.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PayInMethodDto.new(
  id: 1432,
  code: wallet,
  settlement_currency: USD,
  requested_currency: EUR,
  estimated_exchange_rate: 0.923,
  account_methods: null
)
```

