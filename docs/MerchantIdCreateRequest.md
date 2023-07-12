# OpenapiClient::MerchantIdCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** | The name of the merchant that will be displayed on the payments page. | [default to &#39;Test Merchant Name&#39;] |
| **webhook_url** | **String** | The URL that will recieve the webhooks. | [optional][default to &#39;https://www.URL.com/to/send/webhooks/to&#39;] |
| **wallet** | [**MerchantIdCreateRequestWallet**](MerchantIdCreateRequestWallet.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MerchantIdCreateRequest.new(
  display_name: null,
  webhook_url: null,
  wallet: null
)
```

