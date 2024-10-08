=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

require 'date'
require 'time'

module ComposioRuby
  class ConnectionParamsForAccount
    attr_accessor :scope

    attr_accessor :scopes

    attr_accessor :id_token

    attr_accessor :client_id

    attr_accessor :expires_in

    attr_accessor :token_type

    attr_accessor :callback_url

    attr_accessor :client_secret

    attr_accessor :code_verifier

    attr_accessor :refresh_token

    attr_accessor :headers

    attr_accessor :_query_params

    attr_accessor :base_url

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'scope' => :'scope',
        :'scopes' => :'scopes',
        :'id_token' => :'id_token',
        :'client_id' => :'client_id',
        :'expires_in' => :'expires_in',
        :'token_type' => :'token_type',
        :'callback_url' => :'callback_url',
        :'client_secret' => :'client_secret',
        :'code_verifier' => :'code_verifier',
        :'refresh_token' => :'refresh_token',
        :'headers' => :'headers',
        :'_query_params' => :'queryParams',
        :'base_url' => :'base_url'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'scope' => :'String',
        :'scopes' => :'String',
        :'id_token' => :'String',
        :'client_id' => :'String',
        :'expires_in' => :'String',
        :'token_type' => :'String',
        :'callback_url' => :'String',
        :'client_secret' => :'String',
        :'code_verifier' => :'String',
        :'refresh_token' => :'String',
        :'headers' => :'Object',
        :'_query_params' => :'Object',
        :'base_url' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ComposioRuby::ConnectionParamsForAccount` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ComposioRuby::ConnectionParamsForAccount`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'scope')
        self.scope = attributes[:'scope']
      end

      if attributes.key?(:'scopes')
        self.scopes = attributes[:'scopes']
      end

      if attributes.key?(:'id_token')
        self.id_token = attributes[:'id_token']
      end

      if attributes.key?(:'client_id')
        self.client_id = attributes[:'client_id']
      end

      if attributes.key?(:'expires_in')
        self.expires_in = attributes[:'expires_in']
      end

      if attributes.key?(:'token_type')
        self.token_type = attributes[:'token_type']
      end

      if attributes.key?(:'callback_url')
        self.callback_url = attributes[:'callback_url']
      end

      if attributes.key?(:'client_secret')
        self.client_secret = attributes[:'client_secret']
      end

      if attributes.key?(:'code_verifier')
        self.code_verifier = attributes[:'code_verifier']
      end

      if attributes.key?(:'refresh_token')
        self.refresh_token = attributes[:'refresh_token']
      end

      if attributes.key?(:'headers')
        self.headers = attributes[:'headers']
      end

      if attributes.key?(:'_query_params')
        self._query_params = attributes[:'_query_params']
      end

      if attributes.key?(:'base_url')
        self.base_url = attributes[:'base_url']
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          scope == o.scope &&
          scopes == o.scopes &&
          id_token == o.id_token &&
          client_id == o.client_id &&
          expires_in == o.expires_in &&
          token_type == o.token_type &&
          callback_url == o.callback_url &&
          client_secret == o.client_secret &&
          code_verifier == o.code_verifier &&
          refresh_token == o.refresh_token &&
          headers == o.headers &&
          _query_params == o._query_params &&
          base_url == o.base_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [scope, scopes, id_token, client_id, expires_in, token_type, callback_url, client_secret, code_verifier, refresh_token, headers, _query_params, base_url].hash
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
        klass = ComposioRuby.const_get(type)
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
