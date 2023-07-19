# OpenapiClient::PayOutMethodDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the pay out. | [optional] |
| **code** | **String** | The code of the pay out. | [optional] |
| **currency** | **String** | The currency of the pay out. | [optional] |
| **account_methods** | [**Array&lt;AccountMethodDto&gt;**](AccountMethodDto.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PayOutMethodDto.new(
  id: 1432,
  code: gateway,
  currency: EUR,
  account_methods: null
)
```

