# OpenapiClient::MerchantChannelRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_id** | **String** | The merchant ID that you are creating the channel on. | [default to &#39;0a12a214-1619-43fa-9be1-0029f6a440a0&#39;] |
| **pay_currency** | **String** | The cryptocurrency code that the channel will operate on. | [default to &#39;ETH&#39;] |
| **display_currency** | **String** | The currency which pricing will be displayed to the end user in, can be the same as payCurrency, or can be different. | [default to &#39;EUR&#39;] |
| **reference** | **String** | An external reference for the channel that your customer will see. | [default to &#39;c1b933d5-3354-4f83-a05f-0b53f1be85f2&#39;] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MerchantChannelRequestDto.new(
  merchant_id: null,
  pay_currency: null,
  display_currency: null,
  reference: null
)
```

