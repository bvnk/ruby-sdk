=begin
#BVNK API Endpoints

#The BVNK API is designed to facilitate seamless and secure transactions including payments, channels, and digital wallet transactions.

The version of the OpenAPI document: 1.0.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'date'
require 'time'

module OpenapiClient
  class QuoteDto
    # The ID of the quote.
    attr_accessor :id

    # The currency to convert from.
    attr_accessor :from

    # The currency to convert to.
    attr_accessor :to

    # The amount converted to.
    attr_accessor :amount_in

    # The amount due to be converted.
    attr_accessor :amount_due

    # The amount being converted out.
    attr_accessor :amount_out

    # The price quoted.
    attr_accessor :price

    # The status of the quote.
    attr_accessor :quote_status

    # The payment status.
    attr_accessor :payment_status

    # The date and time, encoded into UNIX epoch timestamps.
    attr_accessor :acceptance_expiry_date

    # The date and time, encoded into UNIX epoch timestamps.
    attr_accessor :acceptance_date

    # The date and time, encoded into UNIX epoch timestamps.
    attr_accessor :payment_expiry_date

    # The date and time, encoded into UNIX epoch timestamps.
    attr_accessor :payment_receipt_date

    attr_accessor :pay_in_legs

    attr_accessor :pay_in_method

    attr_accessor :pay_out_method

    # The UUID of the quote.
    attr_accessor :uuid

    attr_accessor :pay_out_instruction

    attr_accessor :pay_in_instruction

    attr_accessor :use_pay_in_method

    attr_accessor :use_pay_out_method

    # The fee for the quote.
    attr_accessor :fee

    # The processing fee.
    attr_accessor :processing_fee

    # The type of quote.
    attr_accessor :type

    # The net price fo the quote.
    attr_accessor :net_price

    # The gross price of the quote.
    attr_accessor :gross_price

    # The price of the quote in gross.
    attr_accessor :amount_in_gross

    # The price of the quote in net.
    attr_accessor :amount_in_net

    attr_accessor :fees

    # The date and time, encoded into UNIX epoch timestamps.
    attr_accessor :date_created

    # The date and time, encoded into UNIX epoch timestamps.
    attr_accessor :last_updated

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'from' => :'from',
        :'to' => :'to',
        :'amount_in' => :'amountIn',
        :'amount_due' => :'amountDue',
        :'amount_out' => :'amountOut',
        :'price' => :'price',
        :'quote_status' => :'quoteStatus',
        :'payment_status' => :'paymentStatus',
        :'acceptance_expiry_date' => :'acceptanceExpiryDate',
        :'acceptance_date' => :'acceptanceDate',
        :'payment_expiry_date' => :'paymentExpiryDate',
        :'payment_receipt_date' => :'paymentReceiptDate',
        :'pay_in_legs' => :'payInLegs',
        :'pay_in_method' => :'payInMethod',
        :'pay_out_method' => :'payOutMethod',
        :'uuid' => :'uuid',
        :'pay_out_instruction' => :'payOutInstruction',
        :'pay_in_instruction' => :'payInInstruction',
        :'use_pay_in_method' => :'usePayInMethod',
        :'use_pay_out_method' => :'usePayOutMethod',
        :'fee' => :'fee',
        :'processing_fee' => :'processingFee',
        :'type' => :'type',
        :'net_price' => :'netPrice',
        :'gross_price' => :'grossPrice',
        :'amount_in_gross' => :'amountInGross',
        :'amount_in_net' => :'amountInNet',
        :'fees' => :'fees',
        :'date_created' => :'dateCreated',
        :'last_updated' => :'lastUpdated'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Integer',
        :'from' => :'String',
        :'to' => :'String',
        :'amount_in' => :'Float',
        :'amount_due' => :'Float',
        :'amount_out' => :'Float',
        :'price' => :'Float',
        :'quote_status' => :'String',
        :'payment_status' => :'String',
        :'acceptance_expiry_date' => :'Integer',
        :'acceptance_date' => :'Integer',
        :'payment_expiry_date' => :'Integer',
        :'payment_receipt_date' => :'Integer',
        :'pay_in_legs' => :'Array<PaymentLegDto>',
        :'pay_in_method' => :'PayInMethodDto',
        :'pay_out_method' => :'PayOutMethodDto',
        :'uuid' => :'String',
        :'pay_out_instruction' => :'PayOutInstructionDto',
        :'pay_in_instruction' => :'PayInInstructionDto',
        :'use_pay_in_method' => :'AccountMethodDto',
        :'use_pay_out_method' => :'AccountMethodDto',
        :'fee' => :'Float',
        :'processing_fee' => :'Float',
        :'type' => :'String',
        :'net_price' => :'Float',
        :'gross_price' => :'Float',
        :'amount_in_gross' => :'Float',
        :'amount_in_net' => :'Float',
        :'fees' => :'FeesDto',
        :'date_created' => :'Integer',
        :'last_updated' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::QuoteDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::QuoteDto`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'from')
        self.from = attributes[:'from']
      end

      if attributes.key?(:'to')
        self.to = attributes[:'to']
      end

      if attributes.key?(:'amount_in')
        self.amount_in = attributes[:'amount_in']
      end

      if attributes.key?(:'amount_due')
        self.amount_due = attributes[:'amount_due']
      end

      if attributes.key?(:'amount_out')
        self.amount_out = attributes[:'amount_out']
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.key?(:'quote_status')
        self.quote_status = attributes[:'quote_status']
      end

      if attributes.key?(:'payment_status')
        self.payment_status = attributes[:'payment_status']
      end

      if attributes.key?(:'acceptance_expiry_date')
        self.acceptance_expiry_date = attributes[:'acceptance_expiry_date']
      end

      if attributes.key?(:'acceptance_date')
        self.acceptance_date = attributes[:'acceptance_date']
      end

      if attributes.key?(:'payment_expiry_date')
        self.payment_expiry_date = attributes[:'payment_expiry_date']
      end

      if attributes.key?(:'payment_receipt_date')
        self.payment_receipt_date = attributes[:'payment_receipt_date']
      end

      if attributes.key?(:'pay_in_legs')
        if (value = attributes[:'pay_in_legs']).is_a?(Array)
          self.pay_in_legs = value
        end
      end

      if attributes.key?(:'pay_in_method')
        self.pay_in_method = attributes[:'pay_in_method']
      end

      if attributes.key?(:'pay_out_method')
        self.pay_out_method = attributes[:'pay_out_method']
      end

      if attributes.key?(:'uuid')
        self.uuid = attributes[:'uuid']
      end

      if attributes.key?(:'pay_out_instruction')
        self.pay_out_instruction = attributes[:'pay_out_instruction']
      end

      if attributes.key?(:'pay_in_instruction')
        self.pay_in_instruction = attributes[:'pay_in_instruction']
      end

      if attributes.key?(:'use_pay_in_method')
        self.use_pay_in_method = attributes[:'use_pay_in_method']
      end

      if attributes.key?(:'use_pay_out_method')
        self.use_pay_out_method = attributes[:'use_pay_out_method']
      end

      if attributes.key?(:'fee')
        self.fee = attributes[:'fee']
      end

      if attributes.key?(:'processing_fee')
        self.processing_fee = attributes[:'processing_fee']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'net_price')
        self.net_price = attributes[:'net_price']
      end

      if attributes.key?(:'gross_price')
        self.gross_price = attributes[:'gross_price']
      end

      if attributes.key?(:'amount_in_gross')
        self.amount_in_gross = attributes[:'amount_in_gross']
      end

      if attributes.key?(:'amount_in_net')
        self.amount_in_net = attributes[:'amount_in_net']
      end

      if attributes.key?(:'fees')
        self.fees = attributes[:'fees']
      end

      if attributes.key?(:'date_created')
        self.date_created = attributes[:'date_created']
      end

      if attributes.key?(:'last_updated')
        self.last_updated = attributes[:'last_updated']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      quote_status_validator = EnumAttributeValidator.new('String', ["ESTIMATE", "TEMPLATE", "PENDING", "ACCEPTED", "PAYMENT_IN_RECEIVED", "PAYMENT_IN_SEEN", "PAYMENT_IN_FAILED", "FRAUD_CHECK_PENDING", "FRAUD_CHECK_FAILED", "PAYMENT_OUT_PENDING", "PAYMENT_OUT_PROCESSED", "PAYMENT_OUT_USED", "COMPLETED", "CONVERSION_FAILED", "PAYMENT_OUT_FAILED", "LOCKED", "REFUNDED"])
      return false unless quote_status_validator.valid?(@quote_status)
      payment_status_validator = EnumAttributeValidator.new('String', ["PENDING", "SEEN", "SUCCESS", "CANCELLED", "FAILED", "FRAUD_PENDING", "FRAUD_PENDING_MANUAL_REVIEW", "FRAUD_FAILED", "REFUND_PENDING", "REFUNDED", "MANUAL_SUCCESS", "REFUND_FAILED"])
      return false unless payment_status_validator.valid?(@payment_status)
      type_validator = EnumAttributeValidator.new('String', ["FIXED", "MARKET"])
      return false unless type_validator.valid?(@type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quote_status Object to be assigned
    def quote_status=(quote_status)
      validator = EnumAttributeValidator.new('String', ["ESTIMATE", "TEMPLATE", "PENDING", "ACCEPTED", "PAYMENT_IN_RECEIVED", "PAYMENT_IN_SEEN", "PAYMENT_IN_FAILED", "FRAUD_CHECK_PENDING", "FRAUD_CHECK_FAILED", "PAYMENT_OUT_PENDING", "PAYMENT_OUT_PROCESSED", "PAYMENT_OUT_USED", "COMPLETED", "CONVERSION_FAILED", "PAYMENT_OUT_FAILED", "LOCKED", "REFUNDED"])
      unless validator.valid?(quote_status)
        fail ArgumentError, "invalid value for \"quote_status\", must be one of #{validator.allowable_values}."
      end
      @quote_status = quote_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_status Object to be assigned
    def payment_status=(payment_status)
      validator = EnumAttributeValidator.new('String', ["PENDING", "SEEN", "SUCCESS", "CANCELLED", "FAILED", "FRAUD_PENDING", "FRAUD_PENDING_MANUAL_REVIEW", "FRAUD_FAILED", "REFUND_PENDING", "REFUNDED", "MANUAL_SUCCESS", "REFUND_FAILED"])
      unless validator.valid?(payment_status)
        fail ArgumentError, "invalid value for \"payment_status\", must be one of #{validator.allowable_values}."
      end
      @payment_status = payment_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["FIXED", "MARKET"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          from == o.from &&
          to == o.to &&
          amount_in == o.amount_in &&
          amount_due == o.amount_due &&
          amount_out == o.amount_out &&
          price == o.price &&
          quote_status == o.quote_status &&
          payment_status == o.payment_status &&
          acceptance_expiry_date == o.acceptance_expiry_date &&
          acceptance_date == o.acceptance_date &&
          payment_expiry_date == o.payment_expiry_date &&
          payment_receipt_date == o.payment_receipt_date &&
          pay_in_legs == o.pay_in_legs &&
          pay_in_method == o.pay_in_method &&
          pay_out_method == o.pay_out_method &&
          uuid == o.uuid &&
          pay_out_instruction == o.pay_out_instruction &&
          pay_in_instruction == o.pay_in_instruction &&
          use_pay_in_method == o.use_pay_in_method &&
          use_pay_out_method == o.use_pay_out_method &&
          fee == o.fee &&
          processing_fee == o.processing_fee &&
          type == o.type &&
          net_price == o.net_price &&
          gross_price == o.gross_price &&
          amount_in_gross == o.amount_in_gross &&
          amount_in_net == o.amount_in_net &&
          fees == o.fees &&
          date_created == o.date_created &&
          last_updated == o.last_updated
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, from, to, amount_in, amount_due, amount_out, price, quote_status, payment_status, acceptance_expiry_date, acceptance_date, payment_expiry_date, payment_receipt_date, pay_in_legs, pay_in_method, pay_out_method, uuid, pay_out_instruction, pay_in_instruction, use_pay_in_method, use_pay_out_method, fee, processing_fee, type, net_price, gross_price, amount_in_gross, amount_in_net, fees, date_created, last_updated].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
