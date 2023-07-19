# OpenapiClient::PayInInstruction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** |  | [optional] |
| **form** | [**Form**](Form.md) |  | [optional] |
| **redirect_url** | **String** |  | [optional] |
| **display_parameters** | **Object** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PayInInstruction.new(
  action: null,
  form: null,
  redirect_url: https://gateway.com/complete/3A6FAFFA-F21D-416E-B17E-2529A9BC44A0,
  display_parameters: {}
)
```

