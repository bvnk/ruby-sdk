# OpenapiClient::WalletDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | The crypto wallet address | [optional] |
| **alternatives** | **Array&lt;Object&gt;** | The array of alternative protocol addresses. | [optional] |
| **approx_available** | **String** | The approximate amount availible in the wallet. | [optional] |
| **approx_balance** | **String** | The balance amount availible of the wallet. | [optional] |
| **available** | **Float** |  | [optional] |
| **balance** | **Float** | The balance of the wallet. | [optional] |
| **converted_available** | **Float** | The availible converted amount | [optional] |
| **currency** | [**CurrencyDto**](CurrencyDto.md) |  | [optional] |
| **custodian_wallet** | **Boolean** | Is a custodian wallet. | [optional] |
| **deposit_fee** | **Float** | The fee to deposit funds in wallet. | [optional] |
| **description** | **String** | The description of the wallet. | [optional] |
| **id** | **Integer** | The wallet ID. | [optional] |
| **is_emoney** | **Boolean** | Is E Money Wallet | [optional][default to false] |
| **lookup** | **String** | Is a lookup. | [optional] |
| **protocol** | **String** | The protocol of the wallet. | [optional] |
| **supports_deposits** | **Boolean** | Is able to support deposits. | [optional][default to true] |
| **supports_third_party** | **Boolean** | Is a third party wallet. | [optional][default to false] |
| **supports_withdrawals** | **Boolean** | Is able to support withdrawals. | [optional][default to true] |
| **withdrawal_fee** | **Float** | The fee to withdraw funds from wallet. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WalletDto.new(
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

