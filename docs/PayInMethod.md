# OpenapiClient::PayInMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **code** | **String** |  | [optional] |
| **settlement_currency** | **String** |  | [optional] |
| **requested_currency** | **String** |  | [optional] |
| **estimated_exchange_rate** | **Float** |  | [optional] |
| **account_methods** | [**Array&lt;AccountMethod&gt;**](AccountMethod.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PayInMethod.new(
  id: 1432,
  code: wallet,
  settlement_currency: USD,
  requested_currency: EUR,
  estimated_exchange_rate: 0.923,
  account_methods: null
)
```

