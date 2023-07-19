# OpenapiClient::Wallet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** |  | [optional] |
| **alternatives** | **Array&lt;Object&gt;** |  | [optional] |
| **approx_available** | **String** |  | [optional] |
| **approx_balance** | **String** |  | [optional] |
| **available** | **Float** |  | [optional] |
| **balance** | **Float** |  | [optional] |
| **converted_available** | **Float** |  | [optional] |
| **currency** | [**Currency**](Currency.md) |  | [optional] |
| **custodian_wallet** | **Boolean** |  | [optional] |
| **deposit_fee** | **Float** |  | [optional] |
| **description** | **String** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **is_emoney** | **Boolean** |  | [optional][default to false] |
| **lookup** | **String** |  | [optional] |
| **protocol** | **String** |  | [optional] |
| **supports_deposits** | **Boolean** |  | [optional][default to true] |
| **supports_third_party** | **Boolean** |  | [optional][default to false] |
| **supports_withdrawals** | **Boolean** |  | [optional][default to true] |
| **withdrawal_fee** | **Float** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Wallet.new(
  address: 0x7be879d34f3Db833f70d9fE4873Bdd0cBcaC6bf6,
  alternatives: [],
  approx_available: 0.59573928,
  approx_balance: 0.59573928,
  available: 0.59573928,
  balance: 0.59573928,
  converted_available: 20917.59,
  currency: null,
  custodian_wallet: null,
  deposit_fee: 0.0,
  description: ETH wallet,
  id: 1432,
  is_emoney: null,
  lookup: null,
  protocol: ETH,
  supports_deposits: null,
  supports_third_party: null,
  supports_withdrawals: null,
  withdrawal_fee: 0.001
)
```

