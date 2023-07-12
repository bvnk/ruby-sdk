# OpenapiClient::MerchantDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the Merchant ID. | [optional] |
| **merchant_id** | **String** | The Merchant ID as a UUID. | [optional] |
| **display_name** | **String** | The name of the merchant displayed on the payments page. | [optional] |
| **secret** | **String** | The secret key used to validate webhooks. | [optional] |
| **webhook_url** | **String** | The webhooks URL that webhoosk are sent to. | [optional] |
| **auto_convert_invalid_payments** | **Boolean** | Is set to auto convert invalid payments. | [optional][default to true] |
| **default_expiry_minutes** | **Integer** | The default number of minutes before a payment expires for this Merchant ID. | [optional] |
| **webhook_version** | **Integer** | The version of webhooks sent. | [optional] |
| **wallet** | [**WalletDto**](WalletDto.md) |  | [optional] |
| **email_recipients** | **String** | The recipients of event emails. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MerchantDto.new(
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

