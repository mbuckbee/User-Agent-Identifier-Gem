# This file was automatically generated for Expedited Addons by APIMATIC v2.0 ( https://apimatic.io ) on 06/02/2016

module UserAgentIdentifier
  class Result

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :mobile_screen_height

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :is_mobile

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :mobile_brand

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :mobile_model

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :version

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :is_android

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :browser_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :operating_system_family

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :operating_system_version

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :is_ios

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :producer

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :operating_system

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :mobile_screen_width

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :mobile_browser

    def initialize(mobile_screen_height = nil,
                   is_mobile = nil,
                   type = nil,
                   mobile_brand = nil,
                   mobile_model = nil,
                   version = nil,
                   is_android = nil,
                   browser_name = nil,
                   operating_system_family = nil,
                   operating_system_version = nil,
                   is_ios = nil,
                   producer = nil,
                   operating_system = nil,
                   mobile_screen_width = nil,
                   mobile_browser = nil)
      @mobile_screen_height = mobile_screen_height
      @is_mobile = is_mobile
      @type = type
      @mobile_brand = mobile_brand
      @mobile_model = mobile_model
      @version = version
      @is_android = is_android
      @browser_name = browser_name
      @operating_system_family = operating_system_family
      @operating_system_version = operating_system_version
      @is_ios = is_ios
      @producer = producer
      @operating_system = operating_system
      @mobile_screen_width = mobile_screen_width
      @mobile_browser = mobile_browser

    end

    def method_missing(method_name)
      puts "There is no method called '#{method_name}'."
    end

    # Creates JSON of the curent object
    def to_json(options = {})
      hash = key_map
      hash.to_json(options)
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        mobile_screen_height = hash["mobile_screen_height"]
        is_mobile = hash["is_mobile"]
        type = hash["type"]
        mobile_brand = hash["mobile_brand"]
        mobile_model = hash["mobile_model"]
        version = hash["version"]
        is_android = hash["is_android"]
        browser_name = hash["browser_name"]
        operating_system_family = hash["operating_system_family"]
        operating_system_version = hash["operating_system_version"]
        is_ios = hash["is_ios"]
        producer = hash["producer"]
        operating_system = hash["operating_system"]
        mobile_screen_width = hash["mobile_screen_width"]
        mobile_browser = hash["mobile_browser"]
        # Create object from extracted values
        Result.new(mobile_screen_height,
                   is_mobile,
                   type,
                   mobile_brand,
                   mobile_model,
                   version,
                   is_android,
                   browser_name,
                   operating_system_family,
                   operating_system_version,
                   is_ios,
                   producer,
                   operating_system,
                   mobile_screen_width,
                   mobile_browser)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['mobile_screen_height'] = mobile_screen_height
      hash['is_mobile'] = is_mobile
      hash['type'] = type
      hash['mobile_brand'] = mobile_brand
      hash['mobile_model'] = mobile_model
      hash['version'] = version
      hash['is_android'] = is_android
      hash['browser_name'] = browser_name
      hash['operating_system_family'] = operating_system_family
      hash['operating_system_version'] = operating_system_version
      hash['is_ios'] = is_ios
      hash['producer'] = producer
      hash['operating_system'] = operating_system
      hash['mobile_screen_width'] = mobile_screen_width
      hash['mobile_browser'] = mobile_browser
      hash
    end
  end
end
