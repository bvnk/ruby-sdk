# OpenapiClient::Quote

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **from** | **String** |  | [optional] |
| **to** | **String** |  | [optional] |
| **amount_in** | **Float** |  | [optional] |
| **amount_due** | **Float** |  | [optional] |
| **amount_out** | **Float** |  | [optional] |
| **price** | **Float** |  | [optional] |
| **quote_status** | **String** |  | [optional] |
| **payment_status** | **String** |  | [optional] |
| **acceptance_expiry_date** | **Integer** |  | [optional] |
| **acceptance_date** | **Integer** |  | [optional] |
| **payment_expiry_date** | **Integer** |  | [optional] |
| **payment_receipt_date** | **Integer** |  | [optional] |
| **pay_in_legs** | [**Array&lt;PaymentLeg&gt;**](PaymentLeg.md) |  | [optional] |
| **pay_in_method** | [**PayInMethod**](PayInMethod.md) |  | [optional] |
| **pay_out_method** | [**PayOutMethod**](PayOutMethod.md) |  | [optional] |
| **uuid** | **String** |  | [optional] |
| **pay_out_instruction** | [**PayOutInstruction**](PayOutInstruction.md) |  | [optional] |
| **pay_in_instruction** | [**PayInInstruction**](PayInInstruction.md) |  | [optional] |
| **use_pay_in_method** | [**AccountMethod**](AccountMethod.md) |  | [optional] |
| **use_pay_out_method** | [**AccountMethod**](AccountMethod.md) |  | [optional] |
| **fee** | **Float** |  | [optional] |
| **processing_fee** | **Float** |  | [optional] |
| **type** | **String** |  | [optional] |
| **net_price** | **Float** |  | [optional] |
| **gross_price** | **Float** |  | [optional] |
| **amount_in_gross** | **Float** |  | [optional] |
| **amount_in_net** | **Float** |  | [optional] |
| **fees** | [**Fees**](Fees.md) |  | [optional] |
| **date_created** | **Integer** |  | [optional] |
| **last_updated** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Quote.new(
  id: 1432,
  from: EUR,
  to: ETH,
  amount_in: 500.0,
  amount_due: 500.0,
  amount_out: 1.12,
  price: 446.43,
  quote_status: null,
  payment_status: null,
  acceptance_expiry_date: 1566198657000,
  acceptance_date: 1566198657000,
  payment_expiry_date: 1566198657000,
  payment_receipt_date: 1566198657000,
  pay_in_legs: null,
  pay_in_method: null,
  pay_out_method: null,
  uuid: B6670497-D139-47E8-9F4A-F97A5D977057,
  pay_out_instruction: null,
  pay_in_instruction: null,
  use_pay_in_method: null,
  use_pay_out_method: null,
  fee: 1.02,
  processing_fee: 1.02,
  type: null,
  net_price: 1234.02,
  gross_price: 1134.02,
  amount_in_gross: 102.0,
  amount_in_net: 104.0,
  fees: null,
  date_created: 1566198657000,
  last_updated: 1566198657000
)
```

