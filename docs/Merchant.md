# OpenapiClient::Merchant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **merchant_id** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **secret** | **String** |  | [optional] |
| **webhook_url** | **String** |  | [optional] |
| **auto_convert_invalid_payments** | **Boolean** |  | [optional][default to true] |
| **default_expiry_minutes** | **Integer** |  | [optional] |
| **webhook_version** | **Integer** |  | [optional] |
| **wallet** | [**Wallet**](Wallet.md) |  | [optional] |
| **email_recipients** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Merchant.new(
  id: 1432,
  merchant_id: b312436e-e477-49d4-be7f-9d027f9b9e34,
  display_name: Test Merchant Name,
  secret: MzI5OGUyZGMtN2FkOC00NzVkLThjNzEtMWVjMzk2ZjQ5OGMwYTBlZTBlOGYtMjBhNi00NjMxLWI1MTctMTI5MjlmMjdhYmM,
  webhook_url: https://www.URL.com/to/send/webhooks/to,
  auto_convert_invalid_payments: null,
  default_expiry_minutes: 1440,
  webhook_version: 1,
  wallet: null,
  email_recipients: null
)
```

