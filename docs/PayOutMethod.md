# OpenapiClient::PayOutMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **code** | **String** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **account_methods** | [**Array&lt;AccountMethod&gt;**](AccountMethod.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PayOutMethod.new(
  id: 1432,
  code: gateway,
  currency: EUR,
  account_methods: null
)
```

