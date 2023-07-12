# OpenapiClient::ExchangeRateDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base** | **String** | The base currency acronym. | [optional] |
| **counter** | **String** | The counter currency acronym. | [optional] |
| **rate** | **Float** | The exchange rate | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ExchangeRateDto.new(
  base: ETH,
  counter: EUR,
  rate: 1680.1
)
```

