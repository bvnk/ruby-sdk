# OpenapiClient::Balance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | [**Currency**](Currency.md) |  | [optional] |
| **wallet_id** | **Integer** |  | [optional] |
| **available** | **Float** |  | [optional] |
| **reserved** | **Float** |  | [optional] |
| **converted_available** | **Float** |  | [optional] |
| **converted_reserved** | **Float** |  | [optional] |
| **total** | **Float** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Balance.new(
  currency: null,
  wallet_id: 255861,
  available: 100.03,
  reserved: 1.0,
  converted_available: 100.0,
  converted_reserved: 104.0,
  total: 101.03
)
```

