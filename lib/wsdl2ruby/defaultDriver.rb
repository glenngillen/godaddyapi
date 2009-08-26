require 'rubygems'
gem 'soap4r'
require "#{File.dirname(__FILE__)}/default.rb"
require "#{File.dirname(__FILE__)}/defaultMappingRegistry.rb"
require 'soap/mapping'
require 'soap/rpc/driver'
require 'soap/mapping/encodedregistry'

class WAPISoap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://api.ote.wildwestdomains.com/wswwdapi/wapi.asmx"

  Methods = [
    [ "http://wildwestdomains.com/webservices/ProcessRequest",
      "processRequest",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "ProcessRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "ProcessRequestResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/Describe",
      "describe",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "Describe"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "DescribeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/CheckAvailability",
      "checkAvailability",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "CheckAvailability"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "CheckAvailabilityResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/Info",
      "info",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "Info"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "InfoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/NameGen",
      "nameGen",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "NameGen"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "NameGenResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/NameGenDB",
      "nameGenDB",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "NameGenDB"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "NameGenDBResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/NameGenDBWithTimeLimit",
      "nameGenDBWithTimeLimit",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "NameGenDBWithTimeLimit"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "NameGenDBWithTimeLimitResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/Poll",
      "poll",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "Poll"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "PollResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/OrderCredits",
      "orderCredits",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "OrderCredits"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "OrderCreditsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/OrderDomains",
      "orderDomains",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "OrderDomains"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "OrderDomainsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/OrderDomainRenewals",
      "orderDomainRenewals",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "OrderDomainRenewals"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "OrderDomainRenewalsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/OrderPrivateDomainRenewals",
      "orderPrivateDomainRenewals",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "OrderPrivateDomainRenewals"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "OrderPrivateDomainRenewalsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/OrderDomainTransfers",
      "orderDomainTransfers",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "OrderDomainTransfers"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "OrderDomainTransfersResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/OrderDomainPrivacy",
      "orderDomainPrivacy",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "OrderDomainPrivacy"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "OrderDomainPrivacyResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/OrderResourceRenewals",
      "orderResourceRenewals",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "OrderResourceRenewals"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "OrderResourceRenewalsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/OrderDomainBackOrders",
      "orderDomainBackOrders",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "OrderDomainBackOrders"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "OrderDomainBackOrdersResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/Cancel",
      "cancel",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "Cancel"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "CancelResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/UpdateDomainOwnership",
      "updateDomainOwnership",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "UpdateDomainOwnership"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "UpdateDomainOwnershipResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/ResetPassword",
      "resetPassword",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "ResetPassword"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "ResetPasswordResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/SetShopperInfo",
      "setShopperInfo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "SetShopperInfo"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "SetShopperInfoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/CreateNewShopper",
      "createNewShopper",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "CreateNewShopper"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "CreateNewShopperResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/CheckUser",
      "checkUser",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "CheckUser"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "CheckUserResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/SetupDomainAlert",
      "setupDomainAlert",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "SetupDomainAlert"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "SetupDomainAlertResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/UpdateDomainAlert",
      "updateDomainAlert",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "UpdateDomainAlert"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "UpdateDomainAlertResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/RemoveDomainAlert",
      "removeDomainAlert",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "RemoveDomainAlert"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "RemoveDomainAlertResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/GetDomainAlertCredits",
      "getDomainAlertCredits",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "GetDomainAlertCredits"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "GetDomainAlertCreditsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/GetMonitoredDomainList",
      "getMonitoredDomainList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "GetMonitoredDomainList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "GetMonitoredDomainListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/GetExpiringNameList",
      "getExpiringNameList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "GetExpiringNameList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "GetExpiringNameListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/DomainForwarding",
      "domainForwarding",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "DomainForwarding"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "DomainForwardingResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/UpdateNameServer",
      "updateNameServer",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "UpdateNameServer"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "UpdateNameServerResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/UpdateDomainContact",
      "updateDomainContact",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "UpdateDomainContact"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "UpdateDomainContactResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/SetDomainLocking",
      "setDomainLocking",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "SetDomainLocking"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "SetDomainLockingResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/ManageTransfer",
      "manageTransfer",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "ManageTransfer"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "ManageTransferResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/UpdateDomainForwarding",
      "updateDomainForwarding",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "UpdateDomainForwarding"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "UpdateDomainForwardingResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/UpdateDomainMasking",
      "updateDomainMasking",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "UpdateDomainMasking"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "UpdateDomainMaskingResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/ModifyDNS",
      "modifyDNS",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "ModifyDNS"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "ModifyDNSResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://wildwestdomains.com/webservices/ValidateRegistration",
      "validateRegistration",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "ValidateRegistration"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://wildwestdomains.com/webservices/", "ValidateRegistrationResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

