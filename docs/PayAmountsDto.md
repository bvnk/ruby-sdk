# OpenapiClient::PayAmountsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | The currency acronym. | [optional] |
| **amount** | **Float** | The amount to be paid. | [optional] |
| **actual** | **Float** | The actual amount received. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PayAmountsDto.new(
  currency: ETH,
  amount: 0.0,
  actual: 76.45
)
```

