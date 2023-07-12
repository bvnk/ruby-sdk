# OpenapiClient::PayOutInstructionDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The pay out instruction code. | [optional] |
| **currency** | **String** | The pay out instruction currency. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PayOutInstructionDto.new(
  code: gateway,
  currency: ETH
)
```

