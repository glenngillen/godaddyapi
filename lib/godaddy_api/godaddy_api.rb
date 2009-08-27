require 'rubygems'
require 'active_support'
require 'active_resource/formats'
require 'uuid'

module GodaddyAPI
  class Base
    @@credentials = nil
    @@connection = nil
    
    def self.setup_credentials(user, password)
      @@credentials = ::Credential.new(user, password)
    end
    
    def self.credentials
      @@credentials
    end
    
    def self.connection
      @@connection ||= WAPISoap.new("https://api.ote.wildwestdomains.com/wswwdapi/wapi.asmx")
    end
    
    def self.generate_uuid
      UUID.new.generate
    end
    
    def initialize(user, password)
      self.class.setup_credentials(user, password) unless credentials
      super()
    end
    
    private
      def self.decode_to_hash(xml)
        ActiveResource::Formats::XmlFormat.decode(
          xml.gsub("&lt;","<").gsub("&gt;",">"))
      end
      
      def decode_to_hash(xml)
        self.class.decode_to_hash(xml)
      end
      
      def connection
        self.class.connection
      end
      
      def credentials
        self.class.credentials
      end
      
      def generate_uuid
        self.class.generate_uuid
      end
  end
end